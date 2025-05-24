<!-- I begin to speak only when I am certain what I will say is not better left unsaid. - Cato the Younger -->
@extends('frontend.layout.theme')

@section('content')
    @section('meta_content')
    <title>{{ $podcast->title }} - {{ env('APP_NAME') }}</title>
    <meta property="og:title" content="{{ $podcast->title }}">
    <meta property="og:description" content="{{ $podcast->description }}">
    <meta property="og:image" content="{{ $podcast->photo }}">
    <meta property="og:audio" content="{{ $podcast->audio }}">
    @endsection
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<style>
    div#social-links {
        margin: 0 auto;
        max-width: 500px;
        margin-right: 25px;
    }
    div#social-links ul li {
        display: inline-block;
    }
    div#social-links ul li a {
        padding: 20px;
        border: 1px solid #ccc;
        margin: 1px;
        font-size: 30px;
        color: #222;
        background-color: #ccc;
    }
    div#social-links ul li a:hover {
        background-color: #1DA1F2;
        color: white;
    }
</style>
<!-- music -->
<section style="background: url({{ asset('assets/frontend/images') }}/bannn.jpg) center center / cover no-repeat;" id="quikctech-teachers-title" class="pt-100">
    <div class="overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="quikctech-teachers-head text-center">
                        <h1>Podcast</h1>
                        <h5><i class="fa-solid fa-house"></i> Home / Podcast</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="quikctech-free-videos">
    <div class="container">
        <div class="row gap my-5">
            <div class="col-lg-7 col-sm-6">
                <div class="quikctech-podcast-main">
                    <div class="quikctech-podcast-inner">
                        <img src="{{ asset($podcast->photo) }}" alt="">
                        <h4>{{ $podcast->title }}</h4>
                        <audio src="{{ asset($podcast->audio) }}" controls></audio>
                        <p>{{ $podcast->description }}</p>
                        <div class="quicktech-share-podcast">
                            <ul>
                                <li>
                                    <a class="btn btn-info">
                                        Click The Buttons:
                                    </a>
                                </li>
                                {!! $shareButtons !!}
                                {{-- <li><a href="#" style="color: #4267B2;"><i class="fa-brands fa-facebook"></i></a></li>
                                <li><a href="#" style="color: #1DA1F2;"><i class="fa-brands fa-twitter"></i></a></li>
                                <li><a href="#" style="color: #C13584;"><i class="fa-brands fa-instagram"></i></a></li> --}}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- music -->
@endsection
