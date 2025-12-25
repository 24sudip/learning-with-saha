<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PackagePayment;
use App\Models\PackageOrder;
use App\Models\Package;

class PaymentController extends Controller
{
    public function surjo(){
        return view('payment_form');
    }

    public function successpage(){
        return view('success');
    }

    public function cancelpage(){
        return view('cancel');
    }
    public function sdssdsdpayment(Request $request)
    {
        try {
            $merchant_name = config('surjopay.merchant_name');
            $merchant_password = config('surjopay.merchant_password');
            $url = 'https://sandbox.shurjopayment.com/api/get_token';
            //For Live Use 'https://engine.shurjopayment.com/api/get_token';

            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => $url,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS =>'{
                "username": "'.$merchant_name.'",
                "password": "'.$merchant_password.'",
                "type": "json"
            }',
                CURLOPT_HTTPHEADER => array(
                    'Content-Type: application/json'
                ),
            ));

            $response = curl_exec($curl);

            curl_close($curl);

            $responseObject = json_decode($response, true);

            if (isset($responseObject['token']) && $responseObject['token'] != null) {
                $res = $this->createPayment($responseObject, $request);

                if (isset($res['checkout_url']) && $res['checkout_url'] != null) {
                    return redirect()->away($res['checkout_url']);
                    // For Inertia Js, Use this to avoid whole tab opening as modal
                    // return inertia()->location($res['checkout_url']);
                }else{
                    return redirect()->route('home')->with('error','Payment Generation Failed');
                }
            }else{
                return redirect()->route('home')->with('error','Token Generation Failed');
            }
        }catch (\Exception $exception){
            return $exception->getMessage();
        }

    }


    public function LastsurjoApiInit(Request $request)
    {
        try {
            // Validate input
            $request->validate([
                'student_id' => 'required|exists:students,id',
                'package_id' => 'required|exists:packages,id',
                'amount' => 'required|numeric|min:1',
            ]);

            $student_id = $request->student_id;
            $package_id = $request->package_id;
            $amount = $request->amount;

            /* --------------------------- 1️⃣ GET TOKEN --------------------------- */
            $merchant_name     = config('surjopay.merchant_name');
            $merchant_password = config('surjopay.merchant_password');

            $tokenCurl = curl_init('https://sandbox.shurjopayment.com/api/get_token');

            curl_setopt_array($tokenCurl, [
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_POST => true,
                CURLOPT_POSTFIELDS => json_encode([
                    "username" => $merchant_name,
                    "password" => $merchant_password,
                    "type"     => "json"
                ]),
                CURLOPT_HTTPHEADER => ['Content-Type: application/json']
            ]);

            $tokenResponse = curl_exec($tokenCurl);
            curl_close($tokenCurl);

            $tokenData = json_decode($tokenResponse, true);

            if (!isset($tokenData['token'])) {
                return response()->json([
                    "statusCode" => "9999",
                    "statusMessage" => "Token generation failed",
                    "debug" => $tokenData
                ], 400);
            }

            /* --------------------------- 2️⃣ CREATE PAYMENT --------------------------- */
            $orderId = 'sp' . time();

            $paymentCurl = curl_init('https://sandbox.shurjopayment.com/api/secret-pay');

            curl_setopt_array($paymentCurl, [
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_POST => true,
                CURLOPT_POSTFIELDS => json_encode([
                    "prefix"         => "sp",
                    "token"          => $tokenData['token'],
                    "store_id"       => $tokenData['store_id'],
                    "return_url"     => route('surjo.success', [
                        'student_id' => $student_id,
                        'package_id' => $package_id,
                        'amount' => $amount,
                    ]),
                    "cancel_url"     => route('surjo.cancel'),
                    "amount"         => $amount,
                    "order_id"       => $orderId,
                    "currency"       => "BDT",
                    "customer_name"  => "Student #$student_id",
                    "customer_phone" => "01700000000",
                    "customer_address"=> "Dhaka",
                    "customer_city"  => "Dhaka",
                    "customer_post_code"=> "1200",
                    "customer_state" => "Bangladesh",
                    "customer_country" => "Bangladesh",
                    "client_ip"      => $request->ip() ?? '127.0.0.1',
                    "customer_email" => 'test@example.com',
                    "type"           => "json"
                ]),
                CURLOPT_HTTPHEADER => [
                    "Content-Type: application/json",
                    "Authorization: Bearer {$tokenData['token']}"
                ]
            ]);

            $paymentResponse = curl_exec($paymentCurl);
            curl_close($paymentCurl);

            $paymentData = json_decode($paymentResponse, true);

            $sp_order_id = $paymentData['sp_order_id'] ?? null;

            if (!$sp_order_id) {
                return response()->json([
                    "statusCode" => "9999",
                    "statusMessage" => "Payment creation failed",
                    "debug" => $paymentData
                ], 400);
            }

            /* --------------------------- 3️⃣ BUILD GATEWAY URL --------------------------- */
            $gatewayUrl = "https://sandbox.securepay.shurjopayment.com/spaycheckout/"
                . "?token={$tokenData['token']}&order_id={$sp_order_id}";

            return response()->json([
                "payment_response" => [
                    "paymentID" => $sp_order_id,
                    "gatewayURL" => $gatewayUrl,
                    "callbackURL" => route('surjo.success', [
                        'student_id' => $student_id,
                        'package_id' => $package_id,
                        'amount' => $amount,
                    ]),
                    "successCallbackURL" => route('surjo.success', [
                        'student_id' => $student_id,
                        'package_id' => $package_id,
                        'amount' => $amount,
                    ]),
                    "failureCallbackURL" => route('surjo.cancel'),
                    "cancelledCallbackURL" => route('surjo.cancel'),
                    "amount" => $amount,
                    "currency" => "BDT",
                    "transactionStatus" => "Initiated",
                    "merchantInvoiceNumber" => $sp_order_id,
                    "statusCode" => "0000",
                    "statusMessage" => "Successful"
                ]
            ]);

        } catch (\Exception $e) {
            return response()->json([
                "statusCode" => "9999",
                "statusMessage" => $e->getMessage()
            ], 500);
        }
    }

    public function surjoApiInit(Request $request)
    {
        try {
            // Validate input
            $request->validate([
                'student_id' => 'required|exists:students,id',
                'package_id' => 'required|exists:packages,id',
                'amount'     => 'required|numeric|min:1',
            ]);

            $student_id = $request->student_id;
            $package_id = $request->package_id;
            $amount     = $request->amount;

            /* --------------------------- 1️⃣ GET TOKEN --------------------------- */
            $merchant_name     = config('surjopay.merchant_name');
            $merchant_password = config('surjopay.merchant_password');

            $tokenCurl = curl_init('https://sandbox.shurjopayment.com/api/get_token');

            // https://engine.shurjopayment.com
            curl_setopt_array($tokenCurl, [
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_POST => true,
                CURLOPT_POSTFIELDS => json_encode([
                    "username" => $merchant_name,
                    "password" => $merchant_password,
                    "type"     => "json"
                ]),
                CURLOPT_HTTPHEADER => ['Content-Type: application/json']
            ]);

            $tokenResponse = curl_exec($tokenCurl);
            curl_close($tokenCurl);

            $tokenData = json_decode($tokenResponse, true);

            if (!isset($tokenData['token'])) {
                return response()->json([
                    "statusCode" => "9999",
                    "statusMessage" => "Token generation failed",
                    "debug" => $tokenData
                ], 400);
            }

            /* --------------------------- 2️⃣ CREATE PAYMENT --------------------------- */
            $orderId = 'sp' . time();

            $returnUrl = route('surjo.success', [
                'student_id' => $student_id,
                'package_id' => $package_id,
                'amount'     => $amount,
            ]) . '&order_id=paymentID'; // ✅ Properly append order_id

            $paymentCurl = curl_init('https://sandbox.shurjopayment.com/api/secret-pay');
            curl_setopt_array($paymentCurl, [
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_POST => true,
                CURLOPT_POSTFIELDS => json_encode([
                    "prefix"          => "sp",
                    "token"           => $tokenData['token'],
                    "store_id"        => $tokenData['store_id'],
                    "return_url"      => $returnUrl,
                    "cancel_url"      => route('surjo.cancel'),
                    "amount"          => $amount,
                    "order_id"        => $orderId,
                    "currency"        => "BDT",
                    "customer_name"   => "Student #$student_id",
                    "customer_phone"  => "01700000000",
                    "customer_address"=> "Dhaka",
                    "customer_city"   => "Dhaka",
                    "customer_post_code"=> "1200",
                    "customer_state"  => "Bangladesh",
                    "customer_country"=> "Bangladesh",
                    "client_ip"       => $request->ip() ?? '127.0.0.1',
                    "customer_email"  => 'test@example.com',
                    "type"            => "json"
                ]),
                CURLOPT_HTTPHEADER => [
                    "Content-Type: application/json",
                    "Authorization: Bearer {$tokenData['token']}"
                ]
            ]);

            $paymentResponse = curl_exec($paymentCurl);
            curl_close($paymentCurl);

            $paymentData = json_decode($paymentResponse, true);

            $sp_order_id = $paymentData['sp_order_id'] ?? null;

            if (!$sp_order_id) {
                return response()->json([
                    "statusCode" => "9999",
                    "statusMessage" => "Payment creation failed",
                    "debug" => $paymentData
                ], 400);
            }

            /* --------------------------- 3️⃣ BUILD GATEWAY URL --------------------------- */
            $gatewayUrl = "https://sandbox.securepay.shurjopayment.com/spaycheckout/?token={$tokenData['token']}&order_id={$sp_order_id}";

            return response()->json([
                "payment_response" => [
                    "paymentID" => $sp_order_id,
                    "gatewayURL" => $gatewayUrl,
                    "callbackURL" => route('surjo.success', [
                        'student_id' => $student_id,
                        'package_id' => $package_id,
                        'amount' => $amount,
                    ]),
                    "successCallbackURL" => route('surjo.success', [
                        'student_id' => $student_id,
                        'package_id' => $package_id,
                        'amount' => $amount,
                    ]),
                    "failureCallbackURL" => route('surjo.cancel'),
                    "cancelledCallbackURL" => route('surjo.cancel'),
                    "amount" => $amount,
                    "currency" => "BDT",
                    "transactionStatus" => "Initiated",
                    "merchantInvoiceNumber" => $sp_order_id,
                    "statusCode" => "0000",
                    "statusMessage" => "Successful"
                ]
            ]);

        } catch (\Exception $e) {
            return response()->json([
                "statusCode" => "9999",
                "statusMessage" => $e->getMessage()
            ], 500);
        }
    }


    public function wesuccess(Request $request)
    {
        try {
            $student_id = $request->student_id;
            $package_id = $request->package_id;
            $amount     = $request->amount;
            $paymentID  = $request->query('order_id', 'SP_UNKNOWN'); // ✅ Get order_id safely
            // dd($paymentID);
            // dd($paymentID);
            //  $fullUrl = $request->fullUrl();
            //  dd($fullUrl);

            if (!$student_id || !$package_id || !$amount) {
                return response()->json([
                    "statusCode" => "9999",
                    "statusMessage" => "Missing payment parameters!"
                ], 400);
            }

            // Store Package Payment
            // $payment = PackagePayment::create([
            //     'student_id'     => $student_id,
            //     'package_id'     => $package_id,
            //     'total_amount'   => $amount,
            //     'invoice_no'     => 'DrAyon' . mt_rand(10000000, 99999999),
            //     'order_date'     => now()->format('d F Y'),
            //     'order_month'    => now()->format('F'),
            //     'order_year'     => now()->format('Y'),
            //     'trxID'          => $paymentID,
            //     'paymentID'      => $paymentID,
            //     'payment_method' => 'SurjoPay',
            //     'status'         => 1
            // ]);

            // Update or create Package Order
            // $package = Package::find($package_id);
            // $expired_at = now()->addMonths($package->duration_month);

            // PackageOrder::updateOrCreate(
            //     ['student_id' => $student_id],
            //     [
            //         'package_payment_id' => $payment->id,
            //         'package_id'        => $package_id,
            //         'expired_at'        => $expired_at
            //     ]
            // );

            // Return JSON response like gateway
            $gatewayUrl = "https://sandbox.securepay.shurjopayment.com/spaycheckout/?token=SP_TOKEN_PLACEHOLDER&order_id={$paymentID}";

            return response()->json([
                "payment_response" => [
                    "paymentID" => $paymentID,
                    "gatewayURL" => $gatewayUrl,
                    "callbackURL" => route('surjo.success', [
                        'student_id' => $student_id,
                        'package_id' => $package_id,
                        'amount' => $amount,
                    ]),
                    "successCallbackURL" => route('surjo.success', [
                        'student_id' => $student_id,
                        'package_id' => $package_id,
                        'amount' => $amount,
                    ]),
                    "failureCallbackURL" => route('surjo.cancel'),
                    "cancelledCallbackURL" => route('surjo.cancel'),
                    "amount" => $amount,
                    "currency" => "BDT",
                    "transactionStatus" => "Completed",
                    "merchantInvoiceNumber" => $paymentID,
                    "statusCode" => "0000",
                    "statusMessage" => "Successful"
                ]
            ]);

        } catch (\Exception $e) {
            return response()->json([
                "statusCode" => "9999",
                "statusMessage" => $e->getMessage()
            ], 500);
        }
    }

    // Old
    protected function createPayment($response, Request $request)
    {
        try {
            $url = 'https://sandbox.shurjopayment.com/api/secret-pay';
            //For Live Use 'https://engine.shurjopayment.com/api/secret-pay';

            $token      = $response['token'];
            $store_id   = $response['store_id'];
            $authorizationToken = "Bearer $token";
            $order_id = rand(000000000000,999999999999);

            session()->put('token', $token);

            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => $url,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS =>'{
                "prefix": "sp",
                "token": "'.$token.'",
                "return_url": "'.route('surjo.success').'",
                "cancel_url": "'.route('surjo.cancel').'",
                "store_id": "'.$store_id.'",
                "amount": "100",
                "order_id": "'.$order_id.'",
                "currency": "BDT",
                "customer_name": "Nazmul",
                "customer_address": "Jhenaidah, Khulna, Bangladesh",
                "customer_phone": "01700000000",
                "customer_city": "Jhenaidah",
                "customer_post_code": "7200",
                "client_ip": "102.101.1.1",
                "discount_amount": "",
                "disc_percent": "",
                "customer_email": "test@gmail.com",
                "customer_state": "Bangladesh",
                "customer_postcode": "7200",
                "customer_country": "Bangladesh",
                "shipping_address": "Jhenaidah, Khulna, Bangladesh",
                "shipping_city": "Jhenaidah",
                "shipping_country": "Bangladesh",
                "received_person_name": "Nazmul",
                "shipping_phone_number": "01700000000",
                "value1": "test value1",
                "value2": "",
                "value3": "",
                "value4": "",
                "type": "json"
            }',
                CURLOPT_HTTPHEADER => array(
                    "Content-Type: application/json",
                    "Authorization: $authorizationToken",
                ),
            ));

            $res = curl_exec($curl);

            curl_close($curl);

            $resObject = json_decode($res, true);

            return $resObject;

        }catch (\Exception $e){
            return $e->getMessage();
        }
    }

    public function sdsdsuccess(Request $request)
    {
        try {
            if (isset($request['order_id']) && $request['order_id'] != null) {
                $url = 'https://www.sandbox.shurjopayment.com/api/verification';
                //For Live Use 'https://www.engine.shurjopayment.com/api/verification';
                $token = session()->get('token');
                $order_id      = $request['order_id'];
                $authorizationToken = "Bearer $token";


                $curl = curl_init();

                curl_setopt_array($curl, array(
                    CURLOPT_URL => $url,
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => '',
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => 'POST',
                    CURLOPT_POSTFIELDS =>'{
                        "order_id": "'.$order_id.'",
                        "type": "json"
                    }',
                    CURLOPT_HTTPHEADER => array(
                        "Content-Type: application/json",
                        "Authorization: $authorizationToken",
                    ),
                ));

                $res = curl_exec($curl);

                curl_close($curl);

                $resObject = json_decode($res, true);
                //Store payment transaction and order details
                session()->forget('token');

                return redirect()->route('success.page')->with('success','Order placed successfully');
            }
        }catch (\Exception $exception){
            return $exception->getMessage();
        }
    }

    public function success(Request $request)
    {
        // return "hello";
        $student_id = $request->student_id;
        $package_id = $request->package_id;
        $amount     = $request->amount;

        // $paymentID  = $request->order_id ?? 'SP_UNKNOWN';
        // dd($student_id);
        // dd($package_id);
        $paymentID  = $request->query('order_id', 'SP_UNKNOWN'); // ✅ Get order_id safely
        $fullUrl = $request->fullUrl(); // Get the full URL including the second ?order_id

        // dd($paymentID);
        if (!$student_id || !$package_id || !$amount) {
            return redirect()->route('cancel.page')->with('error', 'Missing payment parameters!');
        }

        // Store Package Payment
        // $payment = PackagePayment::create([
        //     'student_id' => $student_id,
        //     'package_id' => $package_id,
        //     'total_amount' => $amount,
        //     // 'invoice_no' => 'DrAyon' . mt_rand(10000000, 99999999),

        //     'invoice_no' => 'MedicineEasy' . mt_rand(10000000, 99999999),
        //     'order_date' => now()->format('d F Y'),
        //     'order_month' => now()->format('F'),
        //     'order_year' => now()->format('Y'),
        //     // 'trxID' => $paymentID,

        //     'paymentID' => $paymentID,
        //     'payment_method' => 'SurjoPay',
        //     'status' => 1
        // ]);

        // Update or create Package Order
        // $package = Package::find($package_id);
        // $expired_at = now()->addMonths($package->duration_month);

        // PackageOrder::updateOrCreate(
        //     ['student_id' => $student_id],
        //     [
        //         'package_payment_id' => $payment->id,
        //         'package_id' => $package_id,
        //         'expired_at' => $expired_at
        //     ]
        // );

        return redirect()->route('success.page')->with('success','Order placed successfully');
        // } catch (\Exception $e) {
        //     return redirect()->route('cancel.page')->with('error', $e->getMessage());
        // }
    }

    public function cancel(Request $request)
    {
        return redirect()->route('cancel.page')->with('error','Order Cancelled!');
    }
}
