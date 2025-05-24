@extends('frontend.layout.theme')

@section('content')
<!-- banner -->
    @section('meta_content')
    <title>Home - {{ env('APP_NAME') }}</title>
    @endsection
<section id="quicktech-banner" class="pt-100">
        <div class="container">
          <div class="row">
            <div class="col-lg-5 order-lg-1 order-2">
              <div class="quikctech-ban-img">
               <img src="../../../assets/frontend/images/ban-img.png" class="w-100" alt="">
              </div>
            </div>
            <div class="col-lg-7 order-lg-2 order-1">
              <div class="quicktech-ban-text">
                <h3>For every student, <br>
                  every classroom. <br>
                  Real results.</h3>
                  <p>We’re a nonprofit with the mission to provide a free, world-class education for anyone, anywhere.</p>
                  <div class="ban-btn">
                    <a href="#">Student</a>
                    <div class="hover"></div>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </section>
<!-- banner -->

<!-- overview -->
<section id="quicktech-overview">
  <div class="container">
    <div class="row gap mt-5">
      <div class="col-lg-4 col-md-4">
        <div class="quicktech-overview-inner">
          <div class="quikctech-overview-img">
            <img src="../../../assets/frontend/images/instructor.png" alt="">
          </div>
          <div class="quikctech-overview-text">
            <h6>Best Instructors</h6>
            <p>We have highly skilled & highly experienced Instructors around the globe.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4">
        <div class="quicktech-overview-inner">
          <div class="quikctech-overview-img">
            <img src="../../../assets/frontend/images/webinar.png" alt="">
          </div>
          <div class="quikctech-overview-text">
            <h6>Live Class</h6>
            <p>We tale live classes t give our students the best education.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4">
        <div class="quicktech-overview-inner">
          <div class="quikctech-overview-img">
            <img src="../../../assets/frontend/images/technical-support.png" alt="">
          </div>
          <div class="quikctech-overview-text">
            <h6>1 to 1 Support</h6>
            <p>We give our students best support always & all time 24/7.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- overview -->

<!-- popular courses -->

<section id="quicktech-popular-courses">
  <div class="container">
    <div class="row mt-5">
      <div class="col-lg-12">
        <div class="quikctech-main-head quikctech-dd d-flex justify-content-between">
          <h1>Our Popular Courses</h1>
          <a class="quicktech-view-btn" href="{{route('allcourse')}}">View All</a>
        </div>
      </div>
    </div>


    <div class="row mt-4">
      <div class="col-lg-12">
        <!-- Slider main container -->
  <div class="swiper">
  <!-- Additional required wrapper -->
  <div class="swiper-wrapper">
    <!-- Slides -->

    @foreach($populercourses as $course)
    <div class="swiper-slide">
      <a href="{{route('coursedetails',$course->id)}}">
        <div class="quicktech-course-inner">
          <div class="quikctech-course-img">
            <img src="{{asset($course->thumbnil_image)}}" class="w-100" alt="">
          </div>
          <div class="quicktech-course-text">
            <span>Web Design</span>
            <h3>{{$course->name}}</h3>
            <div class="quikctech-enroll-btn mt-5">
              <p>{{$course->price}} Tk</p>
              <a class="quikctech-entroll" href="checkout.html">Enroll Now</a>
            </div>
          </div>
        </div>
      </a>
    </div>

    @endforeach
    <!-- <div class="swiper-slide">
      <a href="coursedetails.html">
        <div class="quicktech-course-inner">
          <div class="quikctech-course-img">
            <img src="../../../assets/frontend/images/popular.png" class="w-100" alt="">
          </div>
          <div class="quicktech-course-text">
            <span>Web Design</span>
            <h3>Become a web designer in 3 months</h3>
            <div class="quikctech-enroll-btn mt-5">
              <p>150 tk</p>
              <a class="quikctech-entroll" href="checkout.html">Enroll Now</a>
            </div>
          </div>
        </div>
      </a>
    </div>
    <div class="swiper-slide">
      <a href="coursedetails.html">
        <div class="quicktech-course-inner">
          <div class="quikctech-course-img">
            <img src="../../../assets/frontend/images/popular.png" class="w-100" alt="">
          </div>
          <div class="quicktech-course-text">
            <span>Web Design</span>
            <h3>Become a web designer in 3 months</h3>
            <div class="quikctech-enroll-btn mt-5">
              <p>150 tk</p>
              <a class="quikctech-entroll" href="checkout.html">Enroll Now</a>
            </div>
          </div>
        </div>
      </a>
    </div>
    <div class="swiper-slide">
      <a href="coursedetails.html">
        <div class="quicktech-course-inner">
          <div class="quikctech-course-img">
            <img src="../../../assets/frontend/images/popular.png" class="w-100" alt="">
          </div>
          <div class="quicktech-course-text">
            <span>Web Design</span>
            <h3>Become a web designer in 3 months</h3>
            <div class="quikctech-enroll-btn mt-5">
              <p>150 tk</p>
              <a class="quikctech-entroll" href="checkout.html">Enroll Now</a>
            </div>
          </div>
        </div>
      </a>
    </div> -->

  </div>
  <!-- If we need pagination -->
  <!-- <div class="swiper-pagination"></div> -->

  <!-- If we need navigation buttons -->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>

  <!-- If we need scrollbar -->
  <!-- <div class="swiper-scrollbar"></div> -->
</div>

      </div>
    </div>

  </div>
</section>
<!-- popular courses -->


<!-- mentors -->
<section id="quicktech-popular-coursess">
  <div class="container">
    <div class="row mt-5">
      <hr>
      <div class="col-lg-5">
        <div class="quikctech-main-headd">
          <h1>Meet our Highly skilled tutor</h1>
        </div>
      </div>
      <div class="col-lg-7">
        <div class="quikctech-main-hea">
          <p>We have highly skilled, talented, experienced mentors. Our mentors will guide you throughout the course if you face problem he will be there to help you. Also our mentors give 1 to 1 support.</p>
        </div>
      </div>
    </div>
    <div class="row gap mt-4">
      <div class="col-lg-3 col-6">
        <a href="teacherdetails.html">
          <div class="quicktech-course-innerr">
              <div class="quikctech-mentorr-img">
                <img src="../../../assets/frontend/images/profile.jpg" class="w-100" alt="">
              </div>
              <div class="quicktech-course-textt">
                <h3>Pablo Joseph</h3>
                <span>Web Designer</span>
                  <h5><img src="../../../assets/frontend/images/multimedia.png" alt=""> 6 courses</h5>
              </div>
            </div>
        </a>
      </div>
      <div class="col-lg-3 col-6">
        <a href="teacherdetails.html">
          <div class="quicktech-course-innerr">
              <div class="quikctech-mentorr-img">
                <img src="../../../assets/frontend/images/p2.jpg" class="w-100" alt="">
              </div>
              <div class="quicktech-course-textt">
                <h3>Pablo Joseph</h3>
                <span>Web Designer</span>
                  <h5><img src="../../../assets/frontend/images/multimedia.png" alt=""> 6 courses</h5>
              </div>
            </div>
        </a>
      </div>
      <div class="col-lg-3 col-6">
        <a href="teacherdetails.html">
          <div class="quicktech-course-innerr">
              <div class="quikctech-mentorr-img">
                <img src="../../../assets/frontend/images/p3.jpg" class="w-100" alt="">
              </div>
              <div class="quicktech-course-textt">
                <h3>Pablo Joseph</h3>
                <span>Web Designer</span>
                  <h5><img src="../../../assets/frontend/images/multimedia.png" alt=""> 6 courses</h5>
              </div>
            </div>
        </a>
      </div>
      <div class="col-lg-3 col-6">
        <a href="teacherdetails.html">
          <div class="quicktech-course-innerr">
              <div class="quikctech-mentorr-img">
                <img src="../../../assets/frontend/images/p1.jpg" class="w-100" alt="">
              </div>
              <div class="quicktech-course-textt">
                <h3>Pablo Joseph</h3>
                <span>Web Designer</span>
                  <h5><img src="../../../assets/frontend/images/multimedia.png" alt=""> 6 courses</h5>
              </div>
            </div>
        </a>
      </div>




    </div>
    <div class="row my-5">
      <div class="col-lg-12">
        <div class="quikctech-view-all-btn text-center">
          <a href="allteacher.html">See More</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- mentors -->

<!-- why works -->
  <section id="quicktech-why-works">
    <div class="container">
      <div class="row mt-5">
        <div class="col-lg-12">
          <div class="quikctech-main-head text-center">
            <h1>Why Learn with Shahan works</h1>
          </div>
        </div>
      </div>
      <div class="row gap mt-3">
        <div class="col-lg-4 col-sm-6">
          <div class="quicktech-why-inner text-center">
            <div class="quikctech-why-img">
              <img src="../../../assets/frontend/images/w1.png" alt="">
            </div>
            <div class="quikctech-why-text">
              <h5>Personalized learning</h5>
              <p>Students practice at their own pace, first filling in gaps in their understanding and then accelerating their learning.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6">
          <div class="quicktech-why-inner text-center">
            <div class="quikctech-why-img">
              <img src="../../../assets/frontend/images/w2.png" alt="">
            </div>
            <div class="quikctech-why-text">
              <h5>Trusted content</h5>
              <p>Created by experts, Learn with Shahan’s library of trusted practice and lessons covers math, science, and more. Always free for learners and teachers.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6">
          <div class="quicktech-why-inner text-center">
            <div class="quikctech-why-img">
              <img src="../../../assets/frontend/images/w3.png" alt="">
            </div>
            <div class="quikctech-why-text">
              <h5>Tools to empower teachers</h5>
              <p>With Learn with Shahan, teachers can identify gaps in their students’ understanding, tailor instruction, and meet the needs of every student.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- why works -->

<!-- teacher -->
  <section id="quicktech-teachers">
    <div class="container">
      <div class="row gap mt-5">
        <div class="col-lg-6 col-md-6 order-lg-1 order-md-1 order-2">
          <div class="quikctech-teacher-img">
            <img src="../../../assets/frontend/images/teachers.png" class="w-100" alt="">
          </div>
        </div>
        <div class="col-lg-6 col-md-6 order-lg-2 order-md-2 order-1">
          <div class="quicktech-teacher-text">
            <span>TEACHERS</span>
            <h1>Continue with your English Language Club and Engage with best Teachers</h1>
            <p>We empower teachers to support their entire classroom. 90% of US teachers who have used Learn with Shahan have found us effective.</p>
            <a href="allteacher.html">View Teachers</a>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- teacher -->

<!-- student -->
<section id="quicktech-teachers">
  <div class="container">
    <div class="row gap mt-5">
      <div class="col-lg-6 col-md-6">
        <div class="quicktech-teacher-text">
          <span>STUDENTS</span>
          <h1>You can learn <br> anything.</h1>
          <p>Build a deep, solid understanding in math, science, and more.</p>
          <a href="#">Students, start here</a>
        </div>
      </div>
      <div class="col-lg-6 col-md-6">
        <div class="quikctech-teacher-img">
          <img src="../../../assets/frontend/images/students.png" class="w-100" alt="">
        </div>
      </div>

    </div>
  </div>
</section>
<!-- student -->


<!-- testimonial -->
 <section id="quicktech-testimonial">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="quikctech-testi-inner">
                <h1>“I come from a poor family. At home it’s one room, just a room we live in. When I was a child, I used to fear mathematics. But now, I am in love with mathematics because of Learn with Shahan.”</h1>
                <div class="quikctech-testi-person mt-5">
                  <h5>ANJALI <br> <span>India</span></h5>
                  <img src="../../../assets/frontend/images/testi.png" alt="">
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="quikctech-testi-inner">
                <h1>“I come from a poor family. At home it’s one room, just a room we live in. When I was a child, I used to fear mathematics. But now, I am in love with mathematics because of Learn with Shahan.”</h1>
                <div class="quikctech-testi-person mt-5">
                  <h5>ANJALI <br> <span>India</span></h5>
                  <img src="../../../assets/frontend/images/testi.png" alt="">
                </div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="quikctech-testi-inner">
                <h1>“I come from a poor family. At home it’s one room, just a room we live in. When I was a child, I used to fear mathematics. But now, I am in love with mathematics because of Learn with Shahan.”</h1>
                <div class="quikctech-testi-person mt-5">
                  <h5>ANJALI <br> <span>India</span></h5>
                  <img src="../../../assets/frontend/images/testi.png" alt="">
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
 </section>
<!-- testimonial -->

<!-- difference -->
<section id="quicktech-teachers">
  <div class="container">
    <div class="row my-5">
      <div class="col-lg-6 col-md-6 order-lg-1 order-md-1 order-2">
        <div class="quikctech-teacher-img">
          <img src="../../../assets/frontend/images/difference.png" class="w-100" alt="">
        </div>
      </div>
      <div class="col-lg-6 col-md-6 order-lg-2 order-md-2 order-1">
        <div class="quicktech-teacher-text">
          <span>TOGETHER WE CAN MAKE A DIFFERENCE</span>
          <h1>Every child deserves the chance to learn.</h1>
          <p>Across the globe, 617 million children are missing basic math and reading skills. We’re a nonprofit delivering the education they need, and we need your help. You can change the course of a child’s life.</p>
          <a href="#">Give them the chance</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- difference -->

<!-- ebook -->
<section id="quicktech-ebook">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="quikctech-main-head quikctech-dd d-flex justify-content-between">
          <h1>Our Ebooks</h1>
          <a class="quicktech-view-btn" href="allebooks.html">View All</a>
        </div>
      </div>
    </div>
    <div class="row mt-4">
      <div class="col-lg-12">
        <div class="swiper">
          <!-- Additional required wrapper -->
          <div class="swiper-wrapper">
            <!-- Slides -->
            <div class="swiper-slide">
              <a href="ebookdetails.html">
               <div class="quicktech-ebooks-inner">
                <div class="quikctech-ebook-img">
                  <img src="../../../assets/frontend/images/ebook.jpg" class="w-100" alt="">
                </div>
                <div class="quicktech-ebook-text">
                  <h4>Ebook name</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                </div>
                <div class="quikctech-enroll-btn mt-5">
                  <p>150 tk</p>
                  <a class="quikctech-entroll" href="checkout.html">View Now</a>
                </div>
               </div>
              </a>
            </div>
            <div class="swiper-slide">
              <a href="ebookdetails.html">
               <div class="quicktech-ebooks-inner">
                <div class="quikctech-ebook-img">
                  <img src="../../../assets/frontend/images/ebook.jpg" class="w-100" alt="">
                </div>
                <div class="quicktech-ebook-text">
                  <h4>Ebook name</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                </div>
                <div class="quikctech-enroll-btn mt-5">
                  <p>150 tk</p>
                  <a class="quikctech-entroll" href="checkout.html">View Now</a>
                </div>
               </div>
              </a>
            </div>
            <div class="swiper-slide">
              <a href="ebookdetails.html">
               <div class="quicktech-ebooks-inner">
                <div class="quikctech-ebook-img">
                  <img src="../../../assets/frontend/images/ebook.jpg" class="w-100" alt="">
                </div>
                <div class="quicktech-ebook-text">
                  <h4>Ebook name</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                </div>
                <div class="quikctech-enroll-btn mt-5">
                  <p>150 tk</p>
                  <a class="quikctech-entroll" href="#">View Now</a>
                </div>
               </div>
              </a>
            </div>
            <div class="swiper-slide">
              <a href="ebookdetails.html">
               <div class="quicktech-ebooks-inner">
                <div class="quikctech-ebook-img">
                  <img src="../../../assets/frontend/images/ebook.jpg" class="w-100" alt="">
                </div>
                <div class="quicktech-ebook-text">
                  <h4>Ebook name</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                </div>
                <div class="quikctech-enroll-btn mt-5">
                  <p>150 tk</p>
                  <a class="quikctech-entroll" href="checkout.html">View Now</a>
                </div>
               </div>
              </a>
            </div>
            <div class="swiper-slide">
              <a href="ebookdetails.html">
               <div class="quicktech-ebooks-inner">
                <div class="quikctech-ebook-img">
                  <img src="../../../assets/frontend/images/ebook.jpg" class="w-100" alt="">
                </div>
                <div class="quicktech-ebook-text">
                  <h4>Ebook name</h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                </div>
                <div class="quikctech-enroll-btn mt-5">
                  <p>150 tk</p>
                  <a class="quikctech-entroll" href="checkout.html">View Now</a>
                </div>
               </div>
              </a>
            </div>

          </div>
          <!-- If we need pagination -->
          <!-- <div class="swiper-pagination"></div> -->

          <!-- If we need navigation buttons -->
          <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div>

          <!-- If we need scrollbar -->
          <!-- <div class="swiper-scrollbar"></div> -->
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ebook -->

<!-- join -->
 <section id="quicktech-join">
  <div class="container">
    <div class="row mt-5">
      <div class="col-lg-12">
        <div class="quikctech-main-head text-center">
          <h1>Join Learn with Shahan today</h1>
        </div>
      </div>
    </div>
    <div class="row mt-4">
      <div class="col-lg-5 m-auto">
        <div class="quikctech-join-inner" style="background: url('./../../../assets/frontend/images/join.png') no-repeat center / cover;">
         <div class="quikctech-join-btn">
          <a href="#">Students</a>
          <a href="#">Teachers</a>
         </div>

        </div>
      </div>
    </div>
  </div>
 </section>
<!-- join -->



<!-- events -->
<section id="quicktech-events">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="quikctech-main-head text-center">
          <h1>Upcoming Events</h1>
        </div>
      </div>
    </div>
    <div class="row gap mb-5 mt-4">
    <div class="col-lg-7 col-md-7">
     <div class="quikctech-event-inner">
    <div class="quikctech-event-link mb-4">
      <a href="eventdetails.html">
        <div class="quicktech-event-main">
          <div class="quikctech-event-date">
            <h5>Jan <br> 20</h5>
          </div>
          <div class="quikctech-event-text">
            <ul class="quikctech-dett">
              <li><i class="fa-solid fa-user"></i> By admin</li>
              <li><i class="fa-solid fa-folder"></i> Air Transport</li>
          </ul>
          <h4>Clone sit amet, consec tetur elit</h4>
          </div>
        </div>
      </a>
    </div>
    <div class="quikctech-event-link mb-4">
      <a href="eventdetails.html">
        <div class="quicktech-event-main">
          <div class="quikctech-event-date">
            <h5>Jan <br> 20</h5>
          </div>
          <div class="quikctech-event-text">
            <ul class="quikctech-dett">
              <li><i class="fa-solid fa-user"></i> By admin</li>
              <li><i class="fa-solid fa-folder"></i> Air Transport</li>
          </ul>
          <h4>Clone sit amet, consec tetur elit</h4>
          </div>
        </div>
      </a>
    </div>
    <div class="quikctech-event-link mb-4">
      <a href="eventdetails.html">
        <div class="quicktech-event-main">
          <div class="quikctech-event-date">
            <h5>Jan <br> 20</h5>
          </div>
          <div class="quikctech-event-text">
            <ul class="quikctech-dett">
              <li><i class="fa-solid fa-user"></i> By admin</li>
              <li><i class="fa-solid fa-folder"></i> Air Transport</li>
          </ul>
          <h4>Clone sit amet, consec tetur elit</h4>
          </div>
        </div>
      </a>
    </div>

     </div>
    </div>
    <div class="col-lg-5 col-md-5">
      <div class="quicktech-event-img">
        <img src="../../../assets/frontend/images/events.png" class="w-100" alt="">
      </div>
    </div>
    </div>
    <div class="row mb-5">
      <div class="col-lg-12">
        <div class="quikctech-event-view-all text-center">
          <a class="quicktech-view-btn" href="events.html">View All</a>
        </div>
      </div>
    </div>
  </div>
</section>



<!-- events -->


<!-- key supporters -->
   <section id="quicktech-key-supperters">
    <div class="container">
      <div class="row mt-5">
        <div class="col-lg-12">
          <div class="quikctech-main-head text-center">
            <h1>Key supporters</h1>
          </div>
        </div>
      </div>
      <div class="row gapp mt-4 mb-5">
        <div class="col-lg-3 col-sm-6">
           <div class="quicktech-key-img">
            <img src="../../../assets/frontend/images/k1.png" alt="">
           </div>
        </div>
        <div class="col-lg-3 col-sm-6">
          <div class="quicktech-key-img">
           <img src="../../../assets/frontend/images/k2.png" alt="">
          </div>
       </div>
       <div class="col-lg-3 col-sm-6">
        <div class="quicktech-key-img">
         <img src="../../../assets/frontend/images/k3.png" alt="">
        </div>
     </div>
     <div class="col-lg-3 col-sm-6">
      <div class="quicktech-key-img">
       <img src="../../../assets/frontend/images/k4.png" alt="">
      </div>
   </div>
   <div class="col-lg-3 col-sm-6">
    <div class="quicktech-key-img">
     <img src="../../../assets/frontend/images/k5.png" alt="">
    </div>
 </div>
 <div class="col-lg-3 col-sm-6">
  <div class="quicktech-key-img">
   <img src="../../../assets/frontend/images/k6.png" alt="">
  </div>
</div>
<div class="col-lg-3 col-sm-6">
  <div class="quicktech-key-img">
   <img src="../../../assets/frontend/images/k7.png" alt="">
  </div>
</div>
<div class="col-lg-3">
  <div class="quicktech-key-img">
   <img src="../../../assets/frontend/images/k8.png" alt="">
  </div>
</div>

      </div>
    </div>
   </section>
<!-- key supporters -->

@endsection
