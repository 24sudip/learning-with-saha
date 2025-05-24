<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use App\Models\Banner;
use App\Models\Blog;
use App\Models\Category;
use App\Models\Childcategory;
use App\Models\RatingReview;
use App\Models\Course;
use App\Models\Event;
use App\Models\Instructor;
use App\Models\Promovideo;
use App\Models\Student;
use App\Models\Studentbenefit;
use App\Models\Enroll;
use App\Models\{AboutItem, Subcategory, Slider, AboutTab, Coupon, BillingInfo, Ebook, Podcast};
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\{Session, Auth, Hash};
use Gloudemans\Shoppingcart\Facades\Cart;

class FrontendController extends Controller {
    //Auth
    public function register() {
        return view('frontend.auth.register');
    }

    public function login() {
        return view('frontend.auth.login');
    }

    public function verify() {
        $phone = Session::get('verifyPhone');

        if (!$phone) {
            return redirect()->to('/login');
        }

        return view('frontend.auth.verify');
    }

    public function forgetpassword(){
        return view('frontend.auth.forgetpassword');
    }

    public function passwordReset(){
        $phone = Session::get('passresetPhone');

        if (!$phone) {
            return redirect()->to('/login');
        }

        return view('frontend.auth.passwordReset');
    }


    //Normal Pages
    public function index() {

        $populercourses = Course::where('status', 1)->latest()->get();

        $courses = Course::with('category', 'subcategory', 'childcategory', 'childsubcategory')
            ->where(['status' => 1])->latest()->get();
            $new_courses = Course::with('category', 'subcategory', 'childcategory', 'childsubcategory')
            ->where(['status' => 1])->latest()->limit(20)->get();

        $free_courses = Course::with('category', 'subcategory', 'childcategory', 'childsubcategory')
            ->where(['status' => 1, 'discount' => 100])->get();

        $events = Event::where('status', 1)->orderBy('id', 'DESC')->get();
        $banner = Banner::first();

        $front_ads       = Advertisement::where('adcategory_id', 1)->get();
        $success_ads     = Advertisement::where('adcategory_id', 2)->get();
        $studentbenefits = Studentbenefit::where('status', 1)->get();

        $promovideos = Promovideo::get();

        $total["students"]    = Student::count();
        $total["courses"]     = Course::count();
        $total["instructors"] = Instructor::count();

        $front_categories = Category::with('courses')->where(['status'=> true, 'front_page'=>true])->get();
        $fav_categories = Category::where(['status'=> true, 'favourite'=>true])->get();

        $sliders = Slider::where('status','Active')->latest()->limit(3)->get(['photo_name']);
        $about_tab = AboutTab::first();

        return view('frontend.layout.app', compact('populercourses','courses', 'free_courses', 'banner', 'events', 'front_ads', 'success_ads', 'promovideos', 'studentbenefits', 'total', 'front_categories', 'fav_categories','sliders','about_tab'));
    }

    public function allcourse() {
        $populercourses = Course::where('status', 1)->latest()->get();
        $allcourses = Course::where('status', 1)->latest()->get();
        return view('frontend.layout.pages.allcourse', compact('allcourses','populercourses'));
    }

    public function allebook(){
        return view('frontend.layout.pages.allebooks');
    }

    public function allexam(){
        return view('frontend.layout.pages.allexams');
    }

    public function podcastDetail($id) {
        $podcast = Podcast::findOrFail($id);
        $shareButtons = \Share::page(
            url('/podcast/detail/'. $id),
            'Podcast With Shahan',
        )
        ->facebook()
        ->twitter()
        ->linkedin()
        ->telegram()
        ->whatsapp()
        ->reddit();
        return view('frontend.layout.pages.podcast-detail', compact('podcast','shareButtons'));
    }

    public function podcast() {
        return view('frontend.layout.pages.podcast', [
            'podcasts' => Podcast::latest()->get(['id','photo','title','audio','description'])
        ]);
    }

    public function coursedetails($id){
        $coursedetails = Course::findorFail($id);
        $relatedcourses = Course::where('status', 1)->latest()->get();
        return view('frontend.layout.pages.course-details', compact('coursedetails','relatedcourses'));
    }

    public function search(Request $request) {
        $keyword = $request->keyword;
        $courses = Course::where('name', 'LIKE', '%' . $keyword . '%')->where('status', 1)->orderBy('id', 'DESC')->get();

        return view('frontend.search', compact('courses', 'keyword'));
    }

    public function categories($id) {
        $courses = Course::with('category', 'subcategory', 'childcategory', 'childsubcategory')
            ->where(['status' => 1, 'category_id' => $id])->orderBy('id', 'DESC')->get();

        $category        = Category::find($id);
        $categoryId      = $id;
        $subcategoryId   = null;
        $childcategoryId = null;

        return view('frontend.categories', compact('courses', 'category', 'categoryId', 'subcategoryId', 'childcategoryId'));
    }

    public function subcategories($id) {
        $courses = Course::with('category', 'subcategory', 'childcategory', 'childsubcategory')
            ->where(['status' => 1, 'subcategory_id' => $id])->orderBy('id', 'DESC')->get();

        $subcategory     = Subcategory::find($id);
        $category        = Category::find($subcategory->category_id);
        $categoryId      = null;
        $subcategoryId   = $id;
        $childcategoryId = null;

        return view('frontend.categories', compact('courses', 'category', 'categoryId', 'subcategoryId', 'childcategoryId'));
    }

    public function childcategories($id) {
        $courses = Course::with('category', 'subcategory', 'childcategory', 'childsubcategory')
            ->where(['status' => 1, 'childcategory_id' => $id])->orderBy('id', 'DESC')->get();

        $childcategory   = Childcategory::find($id);
        $subcategory     = Subcategory::find($childcategory->subcategory_id);
        $category        = Category::find($subcategory->category_id);
        $categoryId      = null;
        $subcategoryId   = null;
        $childcategoryId = $id;

        return view('frontend.categories', compact('courses', 'category', 'categoryId', 'subcategoryId', 'childcategoryId'));
    }

    public function course(Request $request, $id) {
        $course = Course::with('category', 'subcategory', 'childcategory', 'childsubcategory', 'instructor', 'modules')
            ->where(['status' => 1, 'id' => $id])->first();

        $releted_courses = Course::with('category', 'subcategory', 'childcategory', 'childsubcategory')
            ->where(['status' => 1])->where('category_id', $course->category_id)->where('id', '!=', $course->id)->latest()->get();

        $reviewCount = RatingReview::where('course_id', $course->id)->count();
        $ratingCount = RatingReview::where('course_id', $course->id)->sum('rating');

        $average_rating = $ratingCount>0 ? $ratingCount / $reviewCount : 0;


        $ratings = RatingReview::where('course_id', $course->id)->get();

        $ratingCounts = [
            5 => 0,
            4 => 0,
            3 => 0,
            2 => 0,
            1 => 0
        ];


        foreach ($ratings as $rating) {
            $ratingCounts[$rating->rating]++;
        }

        $totalReviews = $ratings->count();
        $averageRating = $totalReviews > 0 ? array_sum(array_map(function($rating, $count) {
            return $rating * $count;
        }, array_keys($ratingCounts), $ratingCounts)) / $totalReviews : 0;


        $ratingPercentages = [];
        foreach ($ratingCounts as $rating => $count) {
            $ratingPercentages[$rating] = $totalReviews > 0 ? ($count / $totalReviews) * 100 : 0;
        }

        $course->average_rating = $average_rating;
        $course->ratingPercentages = $ratingPercentages;

        return view('frontend.course', compact('course', 'releted_courses'));
    }

    // public function checkCertificate(Request $request){
    //     $certificate = Enroll::where('certificateNo', $request->certificateNo)->first();

    //     return view('frontend.checkCertificate', compact('certificate'));
    // }

    // public function instructors() {
    //     $instructors = Instructor::where(['status' => 1])->get();

    //     return view('frontend.instructors', compact('instructors'));
    // }

    // public function instructor($id) {
    //     $instructor = Instructor::find($id);

    //     $courses = Course::where('instructor_id', $instructor->id)->get();

    //     return view('frontend.single-instructor', compact('instructor', 'courses'));
    // }

    // public function events() {
    //     $events = Event::where('status', 1)->orderBy('id', 'DESC')->get();

    //     return view('frontend.events', compact('events'));
    // }

    // public function eventDetails($id) {
    //     $event = Event::find($id);

    //     return view('frontend.event-details', compact('event'));
    // }

    // public function about() {
    //     return view('frontend.about', [
    //         'about_tab' => AboutTab::first(),
    //         'about_items'=>AboutItem::latest()->get(['thumbnail','title','short_description','slug'])
    //     ]);
    // }

    // public function contact() {
    //     return view('frontend.contact');
    // }

    // public function blog() {
    //     $blogs = Blog::where('status', 1)->orderBy('id', 'DESC')->paginate(12);

    //     return view('frontend.blog', compact('blogs'));
    // }

    // public function blogDetails($id) {
    //     $blog = Blog::find($id);

    //     return view('frontend.blog-details', compact('blog'));
    // }

    // public function cart() {
    //     return view('frontend.cart');
    // }

    public function CouponCalculation() {
        if (Session::has('coupon')) {
            return response()->json(array(
                'subtotal' => Cart::total(),
                'coupon_code' => session()->get('coupon')['coupon_code'],
                'coupon_discount' => session()->get('coupon')['coupon_discount'],
                'discount_amount' => session()->get('coupon')['discount_amount'],
                'total_amount' => session()->get('coupon')['total_amount'],
                'discount_symbol' => session()->get('coupon')['discount_symbol'],
            ));
        } else {
            return response()->json(array(
                'total' => Cart::total()
            ));
        }
    }

    public function CouponRemove() {
        Session::forget('coupon');
        return response()->json(['success' => 'Coupon Removed Successfully']);
    }

    public function GuestCheckout($id) {
        $course = Course::findOrFail($id);
        $carts = Cart::content();
        foreach ($carts as $value) {
            Cart::remove($value->rowId);
        }
        // Check if the course is already in the cart
        // $cartItem = Cart::search(function ($cartItem, $rowId) use ($id) {
        //     return $cartItem->id === $id;
        // });
        // if ($cartItem->isNotEmpty()) {
        //     return "<h1>Already Added</h1>";
        // }
        Cart::add([
            'id' => $id,
            'name' => $course->name,
            'qty' => 1,
            'price' => $course->price,
            'weight' => 1,
            'options' => [
                'image' => $course->thumbnil_image,
                'instructor_id' => $course->instructor->name
            ]
        ]);
        if (Session::has('coupon')) {
            $coupon_code = Session::get('coupon')['coupon_code'];
            $coupon = Coupon::where('coupon_code', $coupon_code)->where('coupon_date','>=', Carbon::now()->format('Y-m-d'))
            ->first();
            $discount_amount = 0;
            $total_amount = 0;
            $discount_symbol = '';
            if ($coupon) {
                if ($coupon->coupon_type == 1) {
                    $discount_amount = round(Cart::total() * $coupon->coupon_discount / 100);
                    $total_amount = round(Cart::total() - Cart::total() * $coupon->coupon_discount / 100);
                    $discount_symbol = '%';
                } elseif($coupon->coupon_type == 2) {
                    $discount_amount = round($coupon->coupon_discount);
                    $total_amount = round(Cart::total() - $coupon->coupon_discount);
                    $discount_symbol = '/=';
                }
                Session::put('coupon', [
                    'coupon_code' => $coupon->coupon_code,
                    'coupon_discount' => $coupon->coupon_discount,
                    'discount_amount' => $discount_amount,
                    'total_amount' => $total_amount,
                    'discount_symbol' => $discount_symbol
                ]);
            }
        }
        return view('frontend.guest-checkout', compact('course'));
    }

    public function CouponApply(Request $request) {
        $coupon = Coupon::where('coupon_code', $request->coupon_name)->where('coupon_date','>=', Carbon::now()->format('Y-m-d'))
        ->first();
        $discount_amount = 0;
        $total_amount = 0;
        $discount_symbol = '';
        if ($coupon) {
            if ($coupon->coupon_type == 1) {
                $discount_amount = round(Cart::total() * $coupon->coupon_discount / 100);
                $total_amount = round(Cart::total() - Cart::total() * $coupon->coupon_discount / 100);
                $discount_symbol = '%';
            } elseif($coupon->coupon_type == 2) {
                $discount_amount = round($coupon->coupon_discount);
                $total_amount = round(Cart::total() - $coupon->coupon_discount);
                $discount_symbol = '/=';
            }
            Session::put('coupon', [
                'coupon_code' => $coupon->coupon_code,
                'coupon_discount' => $coupon->coupon_discount,
                'discount_amount' => $discount_amount,
                'total_amount' => $total_amount,
                'discount_symbol' => $discount_symbol
            ]);
            return response()->json(array(
                'validity' => true,
                'success' => 'Coupon Applied Successfully'
            ));
        } else {
            return response()->json([
                'error' => 'Invalid Coupon',
            ]);
        }
    }

    public function BillingStore(Request $request) {
        // dd($request->all());
        $request->validate([
            'name'=>'required|string|max:255',
            'country'=>'required',
            'phone'=>'required',
            'email'=>'required|email|unique:students,email',
            'division'=>'required',
            'district'=>'required',
            'upzilla'=>'required',
            'address'=>'required|string|max:255',
            'apartment'=>'nullable',
            'notes'=>'nullable',
        ]);
        if (Auth::guard('admin')->check()) {
            Auth::guard('admin')->logout();
        }
        if (Auth::guard('instructor')->check()) {
            Auth::guard('instructor')->logout();
        }
        if (Auth::guard('student')->check()) {
            BillingInfo::create([
                'student_id'=>Auth::guard('student')->user()->id,
                'course_id'=>$request->course_id,
                'country'=>$request->country,
                'division'=>$request->division,
                'district'=>$request->district,
                'upzilla'=>$request->upzilla,
                'address'=>$request->address,
                'apartment'=>$request->apartment,
                'notes'=>$request->notes
            ]);
            return redirect()->route('order.page');
        } else {
            $student = Student::create([
                'name'=>$request->name,
                'email'=>$request->email,
                'password'=>Hash::make($request->phone),
                'phone'=>$request->phone,
                'address'=>$request->address,
            ]);
            BillingInfo::create([
                'student_id'=>$student->id,
                'course_id'=>$request->course_id,
                'country'=>$request->country,
                'division'=>$request->division,
                'district'=>$request->district,
                'upzilla'=>$request->upzilla,
                'address'=>$request->address,
                'apartment'=>$request->apartment,
                'notes'=>$request->notes
            ]);
            if (Auth::guard('student')->attempt(['email' => $request->email, 'password' => $request->phone, 'status' => 1])) {
                // return redirect()->route('student.courses');
                return redirect()->route('order.page');
            }
        }
    }

    public function OrderPage() {
        $billing_info = BillingInfo::where('student_id', Auth::guard('student')->user()->id)->latest()->first();
        if ($billing_info) {
            return view('frontend.order-page', [
                'carts' => Cart::content(),
                'billing_info' => $billing_info
            ]);
        }
    }

    public function checkout() {
        $courses  = session()->get('cart');
        $discount = session()->get('discount');

        return view('frontend.checkout', compact('courses', 'discount'));
    }

    public function AboutDetails($slug) {
        return view('frontend.aboutdetails', [
            'about_item'=>AboutItem::where('slug', $slug)->first()
        ]);
    }

    // public function allcourse() {
    //     return view('frontend.allcourse', [
    //         'categories'=>Category::with('courses')->latest()->get(['id','name'])
    //     ]);
    // }

    public function gallery() {

        return view('frontend.gallery');
    }

    public function videos() {

        return view('frontend.videos');
    }
}
