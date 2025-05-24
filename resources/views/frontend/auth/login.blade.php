@extends('frontend.layout.theme')
@section('content')
    <main>

        <!-- sign up area start -->
        <section class="signup__area po-rel-z1 pt-100 pb-145">
            <div class="sign__shape">
                <img class="man-1" src="../../../assets/frontend/img/icon/sign/man-1.png" alt="">
                <img class="man-2" src="../../../assets/frontend/img/icon/sign/man-2.png" alt="">
                <img class="circle" src="../../../assets/frontend/img/icon/sign/circle.png" alt="">
                <img class="zigzag" src="../../../assets/frontend/img/icon/sign/zigzag.png" alt="">
                <img class="dot" src="../../../assets/frontend/img/icon/sign/dot.png" alt="">
                <img class="bg" src="../../../assets/frontend/img/icon/sign/sign-up.png" alt="">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xxl-8 offset-xxl-2 col-xl-8 offset-xl-2">
                        <div class="section__title-wrapper text-center mb-55">
                            <h2 class="section__title bn-font">Login to the Student Panel <br> to view all your previous updates</h2>
                            <p class="bn-normal">Purchase any course and access all class, study, and data in the same panel</p>
                        </div>
                        
                    </div>
                </div>
                <div class="row">
                    <div class="col-xxl-6 offset-xxl-3 col-xl-6 offset-xl-3 col-lg-8 offset-lg-2">
                        <div class="sign__wrapper white-bg">

                            <div class="sign__form">
                                <form action="/student/login" method="POST">
                                    @csrf
                                    <div class="sign__input-wrapper mb-25">
                                        <h5 class="bn-font">Email</h5>
                                        <div class="sign__input">
                                            <input type="text" placeholder="Enter your email" name="email">
                                            <i class="fal fa-envelope"></i>
                                        </div>
                                    </div>
                                    <div class="sign__input-wrapper mb-10">
                                        <h5 class="bn-font">Password</h5>
                                        <div class="sign__input">
                                            <input type="password" placeholder="Password" name="password">
                                            <i class="fal fa-lock"></i>
                                        </div>
                                    </div>
                                    <div class="sign__action d-sm-flex justify-content-between mb-30">
                                        <div class="sign__agree d-flex align-items-center">
                                            <input class="m-check-input" type="checkbox" id="m-agree">
                                            <label class="m-check-label" style="font-size: 20px !important" for="m-agree">Remember Me</label>
                                        </div>
                                        
                                        <div class="sign__forgot">
                                            <a href="{{ route('forgetpassword') }}" class="bn-normal">Forgot password?</a>
                                        </div>
                                    </div>
                                    <button class="e-btn  w-100"> <span></span> Login</button>
                                    <div class="sign__new text-center mt-20">
                                        <p class="bn-normal">New here? <a href="{{ url('register') }}">Register</a></p>

                                    </div>
                                </form>
                            </div>
                            <div class="mt-4 text-center">
                                <a href="{{ route('google.login') }}" class="login-with-google-btn">Sign in with Google</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- sign up area end -->

    </main>
@endsection
