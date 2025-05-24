@extends('frontend.layout.theme')

@section('content')
    @section('meta_content')
    <title>All Ebooks - {{ env('APP_NAME') }}</title>
    @endsection
<!-- all courses -->
<section style="background: url({{ asset('assets/frontend/images') }}/bannn.jpg) center center / cover no-repeat;" id="quikctech-teachers-title" class="pt-100">
    <div class="overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="quikctech-teachers-head text-center">
                        <h1>Ebooks</h1>
                        <h5> <i class="fa-solid fa-house"></i> Home / Ebooks</h5>
                    </div>
                 </div>
            </div>
        </div>
    </div>
</section>

<section id="quicktech-all-courses">
    <div class="container">
        <div class="row mt-5">
            <div class="col-lg-12">
                <div class="quicktech-filter d-flex justify-content-end align-items-center gap-3 text-end">
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Filter
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Paid</a></li>
                            <li><a class="dropdown-item" href="#">Free</a></li>
                        </ul>
                    </div>
                    <div class="quicktech-advance">
                        <select name="skillLevel" id="skillLevel">
                            <option value="" disabled selected>Skill level</option>
                            <option value="beginner">Beginner</option>
                            <option value="advanced">Advanced</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-5 gapp">
            <div class="col-lg-4 col-sm-6">
                <a href="ebookdetails.html">
                    <div class="quicktech-ebooks-inner">
                        <div class="quikctech-ebook-img">
                            <img src="{{ asset('assets/frontend/images') }}/ebook.jpg" class="w-100" alt="">
                        </div>
                        <div class="quicktech-ebook-text">
                            <h4>Ebook name</h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                        </div>
                        <div class="quikctech-enroll-btn mt-3">
                            <p>150 tk</p>
                            <a class="quikctech-entroll" href="checkout.html">View Now</a>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a href="ebookdetails.html">
                    <div class="quicktech-ebooks-inner">
                        <div class="quikctech-ebook-img">
                            <img src="{{ asset('assets/frontend/images') }}/ebook.jpg" class="w-100" alt="">
                        </div>
                        <div class="quicktech-ebook-text">
                            <h4>Ebook name</h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                        </div>
                        <div class="quikctech-enroll-btn mt-3">
                            <p>150 tk</p>
                            <a class="quikctech-entroll" href="checkout.html">View Now</a>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a href="ebookdetails.html">
                    <div class="quicktech-ebooks-inner">
                        <div class="quikctech-ebook-img">
                            <img src="{{ asset('assets/frontend/images') }}/ebook.jpg" class="w-100" alt="">
                        </div>
                        <div class="quicktech-ebook-text">
                            <h4>Ebook name</h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                        </div>
                        <div class="quikctech-enroll-btn mt-3">
                            <p>150 tk</p>
                            <a class="quikctech-entroll" href="checkout.html">View Now</a>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a href="ebookdetails.html">
                    <div class="quicktech-ebooks-inner">
                        <div class="quikctech-ebook-img">
                        <img src="{{ asset('assets/frontend/images') }}/ebook.jpg" class="w-100" alt="">
                        </div>
                        <div class="quicktech-ebook-text">
                        <h4>Ebook name</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                        </div>
                        <div class="quikctech-enroll-btn mt-3">
                        <p>150 tk</p>
                        <a class="quikctech-entroll" href="checkout.html">View Now</a>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a href="ebookdetails.html">
                    <div class="quicktech-ebooks-inner">
                        <div class="quikctech-ebook-img">
                        <img src="{{ asset('assets/frontend/images') }}/ebook.jpg" class="w-100" alt="">
                        </div>
                        <div class="quicktech-ebook-text">
                        <h4>Ebook name</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                        </div>
                        <div class="quikctech-enroll-btn mt-3">
                        <p>150 tk</p>
                        <a class="quikctech-entroll" href="checkout.html">View Now</a>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<!-- all courses -->
@endsection
