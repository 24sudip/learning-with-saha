<!-- mobile bottom nav -->
<section id="quicktech-bottom-nav">
  <div class="container">
    <div class="row">
      <div class="col-3">
        <div class="quikctech-nav-bottom text-center">
          <a href="/"><i class="fa-solid fa-house"></i> <br> home</a>
        </div>
      </div>
      <div class="col-3">
        <div class="quikctech-nav-bottom text-center">
          <a href="allcourses.html"><i class="fa-solid fa-book"></i> <br> Courses</a>
        </div>
      </div>
      <div class="col-3">
        <div class="quikctech-nav-bottom text-center">
          <a href="freevideos.html"><i class="fa-solid fa-play"></i> <br>Videos</a>
        </div>
      </div>
      <div class="col-3">
        <div class="quikctech-nav-bottom text-center">
          <a href="profile.html"><i class="fa-solid fa-user"></i> <br> Profile</a>
        </div>
      </div>

    </div>
  </div>
</section>
<!-- mobile bottom nav -->

<!-- desktop navbar -->
 <nav class="navbar quicktech-desktop-navbar navbar-expand-lg bg-light">
 <div class="container">


<a class="navbar-brand quikctech-desktop-nav-logo" href="/"><img src="../../../assets/frontend/images/logo (3).png" alt=""></a>
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
  <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
    <li class="nav-item">
      <a class="nav-link" aria-current="page" href="/">Home</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        Courses
      </a>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Grammer</a></li>
        <li><a class="dropdown-item" href="#">Vocabulary</a></li>
      </ul>
    </li>
    <li class="nav-item">
      <a class="nav-link" aria-current="page" href="{{route('allcourse')}}">All Course</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" aria-current="page" href="{{ route('allebook') }}">Ebooks</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" aria-current="page" href="{{url('/allexam')}}">Exams</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" aria-current="page" href="{{ route('podcast') }}">Podcasts</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" aria-current="page" href="freevideos.html">Study</a>
    </li>

   <div class="quicktech-search">
    <form role="search">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="quicktech-search-icon" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
    </form>
   </div>

  </ul>

  <div class="quikctech-login-signup">
    <ul>
      <li class="nav-item dropdown" id="profileDropdown">
        <a class="nav-link d-flex align-items-center" href="#" id="navbarDropdown" role="button">
          <i style="color: black; font-size: 20px;" class="fa fa-user me-2"></i>
        </a>
        <ul class="dropdown-menu dropdown-menu-end shadow-lg" aria-labelledby="navbarDropdown" id="dropdownMenu">
          <li><a class="dropdown-item" href="signin.html"><i class="fa fa-sign-in-alt me-2"></i>Log in</a></li>
          <li><a class="dropdown-item" href="profile.html"><i class="fa fa-user-circle me-2"></i>Profile</a></li>
          <li><a class="dropdown-item text-danger" href="logout.html"><i class="fa fa-sign-out-alt me-2"></i>Logout</a></li>
        </ul>
      </li>
      <li class="quicktech-sign-up">
        <a style="color: black; z-index: 999;" href="signup.html">Get Started
        </a>
      </li>
    </ul>
  </div>

</div>
</div>
  </nav>
<!-- desktop navbar -->
