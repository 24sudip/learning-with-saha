<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Library\SslCommerz\SslCommerzNotification;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\Enroll;
use App\Models\Student;

class SslCommerzPaymentController extends Controller
{
    /**
     * STEP 1: INITIATE PAYMENT
     */
    public function index(Request $request)
    {
        $student = Auth::guard('student')->user();

        if (!$student) {
            return redirect()->route('student.login');
        }

        $tran_id = uniqid('SSL_');

        $post_data = [];
        $post_data['total_amount'] = $request->total_amount;
        $post_data['currency']     = "BDT";
        $post_data['tran_id']      = $tran_id;

        // CUSTOMER INFO
        $post_data['cus_name']     = $student->name;
        $post_data['cus_email']    = $student->email;
        $post_data['cus_phone']    = $student->phone ?? '01700000000';
        $post_data['cus_add1']     = 'Bangladesh';
        $post_data['cus_country'] = 'Bangladesh';

        // SHIPPING INFO (MANDATORY)
        $post_data['ship_name']    = "Online Course";
        $post_data['ship_add1']    = "Dhaka";
        $post_data['ship_city']    = "Dhaka";
        $post_data['ship_country']= "Bangladesh";
        $post_data['shipping_method'] = "NO";

        // PRODUCT INFO
        $post_data['product_name']     = "Course / Ebook";
        $post_data['product_category'] = "Education";
        $post_data['product_profile']  = "non-physical-goods";

        // 🔐 PASS CUSTOM DATA (IMPORTANT)
        $post_data['value_a'] = $student->id;
        $post_data['value_b'] = $request->course_id;
        $post_data['value_c'] = $request->ebook_id;
        $post_data['value_d'] = json_encode([
            'subtotal'    => $request->course_price,
            'discount'    => $request->discount_amount,
            'coupon_code' => $request->coupon_code,
            'note'        => $request->note,
        ]);

        // SAVE PENDING ORDER
        Order::create([
            'student_id'     => $student->id,
            'transaction_id' => $tran_id,
            'amount'         => $request->total_amount,
            'currency'       => 'BDT',
            'status'         => 'Pending',
        ]);

        $sslc = new SslCommerzNotification();
        return $sslc->makePayment($post_data, 'hosted');
    }

    /**
     * STEP 2: SUCCESS CALLBACK
     */
    public function sslsuccess(Request $request)
    {
        $tran_id  = $request->tran_id;
        $amount   = $request->amount;
        $currency = $request->currency;

        $sslc = new SslCommerzNotification();

        $order = Order::where('transaction_id', $tran_id)->first();

        if (!$order || $order->status !== 'Pending') {
            return redirect()->route('ssl.successblade');
        }

        // ✅ VALIDATE PAYMENT
        $is_valid = $sslc->orderValidate(
            $request->all(),
            $tran_id,
            $amount,
            $currency
        );

        if (!$is_valid) {
            $order->update(['status' => 'Failed']);
            return redirect()->route('ssl.cancelblade')
                ->with('error', 'Payment validation failed');
        }

        // 🔐 TRUST ONLY SSL DATA
        $student_id = $request->value_a;
        $course_id  = $request->value_b;
        $ebook_id   = $request->value_c;
        $extra      = json_decode($request->value_d, true);

        // UPDATE ORDER
        $order->update([
            'subtotal'       => $extra['subtotal'] ?? null,
            'discount'       => $extra['discount'] ?? null,
            'coupon_code'    => $extra['coupon_code'] ?? null,
            'note'           => $extra['note'] ?? null,
            'payment_method' => 'SSLCommerz',
            'trx_id'         => $request->bank_trx_id,
            'invoice_no'     => $request->invoice_no,
            'status'         => 'Paid',
        ]);

        // ORDER DETAILS
        OrderDetails::create([
            'order_id' => $order->id,
            'course_id'=> $course_id,
            'ebook_id' => $ebook_id,
            'price'    => $amount,
        ]);

        // ENROLL COURSE
        if ($course_id) {
            Enroll::firstOrCreate([
                'student_id' => $student_id,
                'course_id'  => $course_id,
            ]);
        }

        // 🔑 AUTO LOGIN STUDENT (FIX LOGOUT ISSUE)
        $student = Student::find($student_id);
        if ($student) {
            Auth::guard('student')->login($student);
        }

        return redirect()
            ->route('ssl.successblade')
            ->with('success', 'Payment completed successfully!');
    }

    /**
     * PAYMENT FAIL
     */
    public function fail(Request $request)
    {
        Order::where('transaction_id', $request->tran_id)
            ->update(['status' => 'Failed']);

        return redirect()->route('ssl.cancelblade')
            ->with('error', 'Payment failed');
    }

    /**
     * PAYMENT CANCEL
     */
    public function cancel(Request $request)
    {
        Order::where('transaction_id', $request->tran_id)
            ->update(['status' => 'Canceled']);

        return redirect()->route('ssl.cancelblade')
            ->with('error', 'Payment cancelled');
    }

    /**
     * IPN (OPTIONAL BUT RECOMMENDED)
     */
    public function ipn(Request $request)
    {
        // You can repeat success validation here for extra security
    }
}
