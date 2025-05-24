@extends('frontend.layout.theme')

@section('content')
    @section('meta_content')
    <title>Course Detail - {{ env('APP_NAME') }}</title>
    @endsection
 <section id="quikctch-course-details-main" class="pt-5">
    <div class="container">
        <div class="row pt-5">
            <div class="col-lg-8 col-md-7">
               <div class="quicktech-course-details-inner">
                <h1>{{$coursedetails->name}}</h1>
                <img src="{{asset($coursedetails->thumbnil_image)}}" class="w-100" alt="">

                <div class="quicktech-course-tabs mt-5 mb-5">
                    <ul class="nav nav-pills quicktech-tabs-course mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                          <button class="nav-link quikctech-nav-course-link active" id="pills-description-tab" data-bs-toggle="pill" data-bs-target="#pills-description" type="button" role="tab" aria-controls="pills-description" aria-selected="true">Description</button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link quikctech-nav-course-link" id="pills-curriculum-tab" data-bs-toggle="pill" data-bs-target="#pills-curriculum" type="button" role="tab" aria-controls="pills-curriculum" aria-selected="false">Assignment</button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link quikctech-nav-course-link" id="pills-instructor-tab" data-bs-toggle="pill" data-bs-target="#pills-instructor" type="button" role="tab" aria-controls="pills-instructor" aria-selected="false">Instructor Details</button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link quikctech-nav-course-link" id="pills-review-tab" data-bs-toggle="pill" data-bs-target="#pills-review" type="button" role="tab" aria-controls="pills-review" aria-selected="false">Review</button>
                        </li>
                      </ul>

                      <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab" tabindex="0">
                          <div class="quicktech-description-course">
                            <p>{!!$coursedetails->details!!}</p>
                            <ul class="description-check">
                                <li><i class="fa-solid fa-check"></i> Metus interdum metus</li>
                                <li><i class="fa-solid fa-check"></i> Metus interdum metus</li>
                                <li><i class="fa-solid fa-check"></i> Metus interdum metus</li>
                                <li><i class="fa-solid fa-check"></i> Metus interdum metus</li>
                                <li><i class="fa-solid fa-check"></i> Metus interdum metus</li>
                                <li><i class="fa-solid fa-check"></i> Metus interdum metus</li>

                            </ul>
                          </div>
                        </div>
                        <div class="tab-pane fade" id="pills-curriculum" role="tabpanel" aria-labelledby="pills-curriculum-tab" tabindex="0">
                          <div class="quicktech-curriculm">
                            <p>The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab</p>
                            <div class="quicktech-accordian-curriculm">
                                <div class="accordion accordion-flush" id="accordionFlushExample">
                                    <div class="accordion-item">
                                      <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button quicktech-acc-head collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                            01. What does you simply dummy in do ?
                                        </button>
                                      </h2>
                                      <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <p>Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</p>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="accordion-item">
                                      <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button quicktech-acc-head collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                            02. What graphics dummy of free design ?
                                        </button>
                                      </h2>
                                      <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <p>Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</p>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="accordion-item">
                                      <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button quicktech-acc-head collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                         03. Why we are the best ?
                                        </button>
                                      </h2>
                                      <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <p>Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane fade" id="pills-instructor" role="tabpanel" aria-labelledby="pills-instructor-tab" tabindex="0">
                          <div class="quicktech-instructor">
                            <div class="row">
                                <div class="col-lg-4 col-sm-4">
                                    <div class="quikctech-inscrutor-img">
                                        <img src="images/ad1.jpg" class="w-100" alt="">
                                    </div>
                                </div>
                                <div class="col-lg-8 col-sm-8">
                                    <div class="quikctech-instructor-details">
                                        <h3>Jones Mark <br> <span>Java Programmer</span></h3>

                                        <div class="quicktech-stars">
                                            <ul>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-regular fa-star"></i></li>
                                                <li class="quicktech-rating">4.8 (867)</li>
                                            </ul>
                                        </div>
                                        <p>Lasted my coming uneasy marked so should. Gravity letters it amongst herself dearest an windows by. Wooded ladies she basket season age her uneasy saw. Discourse unwilling am no described.</p>
                                        <div class="quicktech-instructor-experience">
                                            <ul class="quikctech-det">
                                                <li><i class="fa-solid fa-play"></i> 12 Courses</li>
                                                <li><i class="fa-solid fa-message"></i> 867 Rating</li>
                                                <li><i class="fa-solid fa-user"></i> 4k Students</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-lg-4 col-sm-4">
                                    <div class="quikctech-inscrutor-img">
                                        <img src="images/ad1.jpg" class="w-100" alt="">
                                    </div>
                                </div>
                                <div class="col-lg-8 col-sm-8">
                                    <div class="quikctech-instructor-details">
                                        <h3>Jones Mark <br> <span>Java Programmer</span></h3>

                                        <div class="quicktech-stars">
                                            <ul>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-regular fa-star"></i></li>
                                                <li class="quicktech-rating">4.8 (867)</li>
                                            </ul>
                                        </div>
                                        <p>Lasted my coming uneasy marked so should. Gravity letters it amongst herself dearest an windows by. Wooded ladies she basket season age her uneasy saw. Discourse unwilling am no described.</p>
                                        <div class="quicktech-instructor-experience">
                                            <ul class="quikctech-det">
                                                <li><i class="fa-solid fa-play"></i> 12 Courses</li>
                                                <li><i class="fa-solid fa-message"></i> 867 Rating</li>
                                                <li><i class="fa-solid fa-user"></i> 4k Students</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab" tabindex="0">
                          <div class="quicktech-review">
                            <div class="rating-summary my-4">
                                <div class="text-center mb-4">
                                    <h1 class="rating-count">5.0</h1>
                                    <div class="rating-stars">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <p class="mb-0">Rated 5 out of 3 Ratings</p>
                                </div>
                                <div>
                                    <div class="d-flex align-items-center mb-2">
                                        <span class="me-2">5</span>
                                        <div class="progress flex-grow-1 me-2" style="height: 10px;">
                                            <div class="progress-bar" role="progressbar" style="width: 100%;"></div>
                                        </div>
                                        <span>100%</span>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <span class="me-2">4</span>
                                        <div class="progress flex-grow-1 me-2" style="height: 10px;">
                                            <div class="progress-bar" role="progressbar" style="width: 0%;"></div>
                                        </div>
                                        <span>0%</span>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <span class="me-2">3</span>
                                        <div class="progress flex-grow-1 me-2" style="height: 10px;">
                                            <div class="progress-bar" role="progressbar" style="width: 0%;"></div>
                                        </div>
                                        <span>0%</span>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <span class="me-2">2</span>
                                        <div class="progress flex-grow-1 me-2" style="height: 10px;">
                                            <div class="progress-bar" role="progressbar" style="width: 0%;"></div>
                                        </div>
                                        <span>0%</span>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <span class="me-2">1</span>
                                        <div class="progress flex-grow-1 me-2" style="height: 10px;">
                                            <div class="progress-bar" role="progressbar" style="width: 0%;"></div>
                                        </div>
                                        <span>0%</span>
                                    </div>
                                </div>
                            </div>

                            <div class="review-card mt-3 d-flex">
                                <div>
                                    <img src="images/re.jpg" alt="Profile Picture" class="profile-img me-3">
                                </div>
                                <div>
                                    <h5 class="mb-0">Mira Jone</h5>
                                    <small class="text-muted">15 December, 2020</small>
                                    <div class="stars my-2">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <p class="mb-0">Agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.</p>
                                </div>
                            </div>
                            <div class="review-card mt-3 d-flex">
                                <div>
                                    <img src="images/re.jpg" alt="Profile Picture" class="profile-img me-3">
                                </div>
                                <div>
                                    <h5 class="mb-0">Mira Jone</h5>
                                    <small class="text-muted">15 December, 2020</small>
                                    <div class="stars my-2">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <p class="mb-0">Agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least.</p>
                                </div>
                            </div>
                          </div>
                        </div>
                      </div>


                </div>


               </div>
            </div>
            <div class="col-lg-4 col-md-5">
                <div class="course-card">
                    <div class="quikctech-f-inner">
                      <div class="course-title">Course Features</div>
                    <ul class="course-list">
                      <li class="course-list-item">
                        <i>&#128101;</i>
                        <strong>Enrolled :</strong> 1200 students
                      </li>
                      <li class="course-list-item">
                        <i>&#128337;</i>
                        <strong>Duration :</strong> 2 hours
                      </li>
                      <li class="course-list-item">
                        <i>&#128196;</i>
                        <strong>Lectures :</strong> 8
                      </li>
                      <li class="course-list-item">
                        <i>&#128193;</i>
                        <strong>Categories :</strong> Technology
                      </li>
                      <li class="course-list-item">
                        <i>&#128204;</i>
                        <strong>Tags :</strong> Android, JavaScript
                      </li>
                      <li class="course-list-item">
                        <i>&#128100;</i>
                        <strong>Instructor :</strong> Ethan Dean
                      </li>
                    </ul>
                    </div>
                    <div class="quikctech-pp">
                        <div class="course-price">Price: {{$coursedetails->price}} Tk</div>
                        <a href="{{ route('অতিথি-চেকআউট', $coursedetails->id) }}" class="course-button">ENROLL COURSE</a>
                    </div>
                  </div>

                  <div class="quicktech-recent-course mt-5">
                    <h3>Suggested Course</h3>
                   <div class="quikctech-in-cour">
                    <div class="quicktech-recent-inner mt-3 d-flex gap-3">
                        <a href="coursedetails.html">
                            <div class="quikcteck-recent-img">
                                <img src="images/popular.png" alt="">
                             </div>
                             <div class="quikctech-recent-details">
                                <h4>Web Design <br>  <p>Become a web designer in 3 months</p></h4>
                                <div class="quikctech-enroll-btnn mt-2">
                                    <p>150 tk</p>
                                    <a class="quikctech-entrolll" href="checkout.html">Enroll Now</a>
                                  </div>
                             </div>
                        </a>
                       </div>
                       <div class="quicktech-recent-inner mt-3 d-flex gap-3">
                        <a href="coursedetails.html">
                            <div class="quikcteck-recent-img">
                                <img src="images/popular.png" alt="">
                             </div>
                             <div class="quikctech-recent-details">
                                <h4>Web Design <br>  <p>Become a web designer in 3 months</p></h4>
                                <div class="quikctech-enroll-btnn mt-2">
                                    <p>150 tk</p>
                                    <a class="quikctech-entrolll" href="checkout.html">Enroll Now</a>
                                  </div>
                             </div>
                        </a>
                       </div>
                       <div class="quicktech-recent-inner mt-3 d-flex gap-3">
                        <a href="coursedetails.html">
                            <div class="quikcteck-recent-img">
                                <img src="images/popular.png" alt="">
                             </div>
                             <div class="quikctech-recent-details">
                                <h4>Web Design <br>  <p>Become a web designer in 3 months</p></h4>
                                <div class="quikctech-enroll-btnn mt-2">
                                    <p>150 tk</p>
                                    <a class="quikctech-entrolll" href="checkout.html">Enroll Now</a>
                                  </div>
                             </div>
                        </a>
                       </div>


                   </div>
                  </div>
            </div>
        </div>
    </div>
 </section>


 <!-- related course -->
 <section id="quicktech-popular-courses">
    <div class="container">
      <div class="row mt-5">
        <div class="col-lg-12">
          <div class="quikctech-main-head text-center">
            <h1>Related Courses</h1>
          </div>
        </div>
      </div>


      <div class="row mt-4 mb-5">
        <div class="col-lg-12">
          <!-- Slider main container -->
  <div class="swiper">
    <!-- Additional required wrapper -->
    <div class="swiper-wrapper">
      <!-- Slides -->

      @foreach($relatedcourses as $relatedcourse)
      <div class="swiper-slide">
        <a href="coursedetails.html">
          <div class="quicktech-course-inner">
            <div class="quikctech-course-img">
              <img src="{{asset($relatedcourse->thumbnil_image)}}" class="w-100" alt="">
            </div>
            <div class="quicktech-course-text">
              <span>Web Design</span>
              <h3>{{$relatedcourse->name}}</h3>
              <div class="quikctech-enroll-btn mt-5">
                <p>{{$relatedcourse->price}} tk</p>
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
              <img src="images/popular.png" class="w-100" alt="">
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
              <img src="images/popular.png" class="w-100" alt="">
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
              <img src="images/popular.png" class="w-100" alt="">
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
   <!-- related course -->



   <!-- teachers details -->
@endsection
