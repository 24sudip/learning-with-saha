<!-- It is quality rather than quantity that matters. - Lucius Annaeus Seneca -->
@extends('frontend.layout.theme')

@section('content')
<section class="pt-5">
    <div class="container pt-5">
        <div class="row">
            <div class="col-lg-4">
                <div class="quicktech-order-card card p-4">
                    <h5 class="quicktech-order-title card-title mb-4">Your order</h5>
                    <table class="quicktech-order-table table">
                        <tbody>
                            @foreach ($carts as $cart)
                            <tr>
                                <td>{{ $cart->name }}
                                    {{-- <span class="text-muted">× 1</span> --}}
                                </td>
                                <td class="text-end">৳ {{ $cart->price }}</td>
                            </tr>
                            <tr>
                                <td>Thumbnail</td>
                                <td class="text-end">
                                    <img src="{{ asset($cart->options['image']) }}" alt="image" width="80">
                                </td>
                            </tr>
                            <tr>
                                <td>Instructor</td>
                                <td class="text-end">{{ $cart->options['instructor_id'] }}</td>
                            </tr>
                            @endforeach
                            @if (Session::has('coupon'))
                            <tr>
                                <td>Coupon Code</td>
                                <td class="text-end">{{ session()->get('coupon')['coupon_code'] }}</td>
                            </tr>
                            <tr>
                                <td>Coupon Discount</td>
                                <td class="text-end">
                                {{ session()->get('coupon')['coupon_discount'] }}{{ session()->get('coupon')['discount_symbol'] }}
                                </td>
                            </tr>
                            <tr>
                                <td>Discount Amount</td>
                                <td class="text-end">{{ session()->get('coupon')['discount_amount'] }}</td>
                            </tr>
                            <tr>
                                <td>Total Amount</td>
                                <td class="text-end">{{ session()->get('coupon')['total_amount'] }}</td>
                            </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="quicktech-order-card card p-4">
                    <h5 class="quicktech-order-title card-title mb-4">Student Description</h5>
                    <table class="quicktech-order-table table">
                        <tr>
                            <td>Name</td>
                            <td class="text-end">{{ Auth::guard('student')->user()->name }}</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td class="text-end">{{ Auth::guard('student')->user()->email }}</td>
                        </tr>
                        <tr>
                            <td>Phone</td>
                            <td class="text-end">{{ Auth::guard('student')->user()->phone }}</td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td class="text-end">{{ Auth::guard('student')->user()->address }}</td>
                        </tr>
                        <tr>
                            <td>Country</td>
                            <td class="text-end">{{ $billing_info->country }}</td>
                        </tr>
                        <tr>
                            <td>Division</td>
                            <td class="text-end">{{ $billing_info->division }}</td>
                        </tr>
                        <tr>
                            <td>District</td>
                            <td class="text-end">{{ $billing_info->district }}</td>
                        </tr>
                        <tr>
                            <td>Upzilla</td>
                            <td class="text-end">{{ $billing_info->upzilla }}</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="quicktech-order-card card p-4">
                    <h5 class="quicktech-order-title card-title mb-4">Payment Method</h5>
                    <form class="quicktech-order-table table">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-check ms-5">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                    <label class="form-check-label ms-2" for="flexRadioDefault1">
                                        bKash
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-2">
                            <div class="card-body">
                                <div class="form-check ms-5">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                    <label class="form-check-label ms-2" for="flexRadioDefault2">
                                        SSL Commerz
                                    </label>
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-success mt-2">Confirm</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
