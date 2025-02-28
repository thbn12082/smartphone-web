<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Agency - Start Bootstrap Theme</title>
                <!-- Favicon-->
                <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
                <!-- Font Awesome icons (free version)-->
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <!-- Google fonts-->
                <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"
                    type="text/css" />
                <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet"
                    type="text/css" />
                <!-- Core theme CSS (includes Bootstrap)-->
                <link href="/client/css/homepage.css" rel="stylesheet" />
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Inria+Serif:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&family=Island+Moments&display=swap"
                    rel="stylesheet">
                <style>
                    .BannerTheme_sliderWrap__csOTb .container {
                        position: relative;
                        /* Đảm bảo container có position relative */
                    }

                    .BannerTheme_sliderWrap__csOTb .container img {
                        position: absolute;
                        /* Đặt hình ảnh điện thoại ở vị trí tuyệt đối */
                        top: 50%;
                        /* Đặt hình ảnh ở giữa theo chiều dọc */
                        left: 50%;
                        /* Đặt hình ảnh ở giữa theo chiều ngang */
                        transform: translate(-612px, -570px);
                        /* Căn giữa hình ảnh */
                        z-index: 2;
                        /* Đảm bảo hình ảnh nằm trên background */
                    }

                    .BannerTheme_sliderWrap__csOTb .bg-\[length\:100\%_auto\].bg-\[center_top\].bg-no-repeat.BannerTheme_sliderBg__lb4oh img {
                        z-index: 1;
                        /* Đặt z-index thấp hơn cho background */
                    }

                    .check {

                        font-family: 'Island Moments', cursive;
                        font-size: 57px;
                    }
                </style>
            </head>

            <body id="page-top">
                <!-- Navigation -->
                <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
                    <div class="container">
                        <!-- <a class="navbar-brand" href="#page-top"><img src="assets/img/navbar-logo.svg" alt="..." /></a> -->
                        <p style="color: antiquewhite; font-size: 30px;">Smartphone shop</p>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                            aria-label="Toggle navigation">
                            Menu
                            <i class="fas fa-bars ms-1"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                                <li class="nav-item"><a class="nav-link" href="#services">Dịch vụ</a></li>
                                <li class="nav-item"><a class="nav-link" href="#portfolio">Mặt hàng bán chạy</a></li>
                                <li class="nav-item"><a class="nav-link" href="#about">Về chúng tôi</a></li>
                                <li class="nav-item"><a class="nav-link" href="#team">Team</a></li>
                                <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Masthead -->
                <div class="BannerTheme_sliderWrap__csOTb">
                    <a class="BannerTheme_sliderItem__0Yheb BannerTheme_fadeIn__f2GRS"
                        href="https://fptshop.com.vn/dien-thoai/samsung-galaxy-s25-ultra" target="_blank" rel="dofollow"
                        draggable="false">
                        <div class="bg-[length:100%_auto] bg-[center_top] bg-no-repeat BannerTheme_sliderBg__lb4oh"
                            style="background-color:#F3F4F6 !important">
                            <img alt="background" fetchpriority="high" width="1440" height="600" decoding="async"
                                data-nimg="1" style="color: transparent; width: 100vw; height: auto;"
                                srcset="https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:quality(100)/desk_header_bg_2_fc50affb12.png 1x"
                                src="https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:quality(100)/desk_header_bg_2_fc50affb12.png">

                        </div>
                        <div
                            class="container relative top-[24px]  m-auto flex min-h-[148px] items-center justify-center md:top-[42px] md:min-h-[285px]">
                            <img alt="https://fptshop.com.vn/" draggable="false" loading="lazy" width="1240"
                                height="285" decoding="async" data-nimg="1" style="color: transparent;"
                                srcset="https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:quality(100)/desk_header_11f5decdf9.png 1x"
                                src="https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:quality(100)/desk_header_11f5decdf9.png">
                        </div>

                    </a>
                </div>

                <!-- check -->
                <div class="col-md-12 col-lg-5">
                    <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item rounded active">
                                <img src="img/hero-img-1.png" class="img-fluid w-100 h-100 bg-secondary rounded"
                                    alt="First slide">
                                <a href="#" class="btn px-4 py-2 text-white rounded">Fruites</a>
                            </div>
                            <div class="carousel-item rounded">
                                <img src="img/hero-img-2.jpg" class="img-fluid w-100 h-100 rounded" alt="Second slide">
                                <a href="#" class="btn px-4 py-2 text-white rounded">Vesitables</a>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselId"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselId"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>




                <!-- Services-->
                <section class="page-section" id="services">
                    <div class="container">
                        <h2 class="section-heading check" style="margin-bottom: 40px;">Dịch vụ của chúng tôi</h2>
                    </div>
                    <div class="row text-center">
                        <div class="col-md-2">
                            <span class="fa-stack fa-2x">
                                <i class="fas fa-circle fa-stack-2x text-secondary"></i>
                                <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4 class="my-3">E-Commerce</h4>
                            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima
                                maxime quam
                                architecto quo inventore harum ex magni, dicta impedit.</p>
                        </div>
                        <div class="col-md-2">
                            <span class="fa-stack fa-2x">
                                <i class="fas fa-circle fa-stack-2x text-secondary"></i>
                                <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4 class="my-3">Responsive Design</h4>
                            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima
                                maxime quam
                                architecto quo inventore harum ex magni, dicta impedit.</p>
                        </div>
                        <div class="col-md-2">
                            <span class="fa-stack fa-2x">
                                <i class="fas fa-circle fa-stack-2x text-secondary"></i>
                                <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4 class="my-3">Web Security</h4>
                            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima
                                maxime quam
                                architecto quo inventore harum ex magni, dicta impedit.</p>
                        </div>
                        <div class="col-md-2">
                            <span class="fa-stack fa-2x">
                                <i class="fas fa-circle fa-stack-2x text-secondary"></i>
                                <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4 class="my-3">E-Commerce</h4>
                            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima
                                maxime quam
                                architecto quo inventore harum ex magni, dicta impedit.</p>
                        </div>
                        <div class="col-md-2">
                            <span class="fa-stack fa-2x">
                                <i class="fas fa-circle fa-stack-2x text-secondary"></i>
                                <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4 class="my-3">Responsive Design</h4>
                            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima
                                maxime quam
                                architecto quo inventore harum ex magni, dicta impedit.</p>
                        </div>
                        <div class="col-md-2">
                            <span class="fa-stack fa-2x">
                                <i class="fas fa-circle fa-stack-2x text-secondary"></i>
                                <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4 class="my-3">Web Security</h4>
                            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima
                                maxime quam
                                architecto quo inventore harum ex magni, dicta impedit.</p>
                        </div>
                    </div>
                    </div>
                </section>
                <!-- Portfolio Grid-->
                <section class="page-section bg-light" id="portfolio">
                    <div class="container">
                        <!-- <div class="text-center"> -->
                        <h2 class="section-heading check">Các mặt hàng bán chạy</h2>
                        <!-- <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3> -->
                        <!-- </div> -->

                    </div>
                </section>
                <!-- About-->
                <section class="page-section" id="about">
                    <div class="container">


                        <div class="col" style="display: flex; justify-content: space-around;">
                            <div class="content col-lg-5">
                                <h2 class="section-heading check" style="text-align: center;">Về chúng tôi</h2>
                                <p>Được thành lập vào tháng 8 năm 2004 bởi ông Nguyễn Thế Bình và các cộng sự, Công ty
                                    Cổ phần
                                    Smartphone Shop bước đầu gia nhập thị trường với mô hình kinh doanh đầy táo bạo: Kết
                                    hợp thương
                                    mại
                                    điện tử và hệ thống cửa hàng bán lẻ</p>
                                <br>

                                <p>Trong bối cảnh điện thoại di động khi ấy còn là mặt hàng xa xỉ của giới nhà giàu và
                                    thị
                                    trường
                                    điện thoại chính hãng còn chưa nở rộ như hiện nay, sự xuất hiện của Thế giới di động
                                    nhanh
                                    chóng
                                    gây được tiếng vang lớn trong cộng đồng người tiêu dùng Việt Nam</p>
                                <div style="display: flex; justify-content: center;">
                                    <button type="button" class="btn btn-dark" style="margin-right: 25px;">Tìm hiểu
                                        thêm</button>
                                    <button type="button" class="btn btn-light">Mua sắm ngay</button>
                                </div>



                            </div>
                            <div class="img col-lg-5">
                                <img src="https://www.apple.com.cn/newsroom/images/environments/stores/standard/Apple_Changsha_NewStore_09012021_Full-Bleed-Image.jpg.large.jpg"
                                    style="width: 100%; height: 100%; object-fit: cover;" alt="">
                            </div>
                        </div>

                    </div>
                </section>
                <!-- Team-->
                <section class="page-section bg-light" id="team">
                    <div class="container">
                        <div class="text-center">
                            <h2 class="section-heading text-uppercase">Our Amazing Team</h2>
                            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="team-member">
                                    <img class="mx-auto rounded-circle" src="assets/img/team/1.jpg" alt="..." />
                                    <h4>Parveen Anand</h4>
                                    <p class="text-muted">Lead Designer</p>
                                    <a class="btn btn-dark btn-social mx-2" href="#!"
                                        aria-label="Parveen Anand Twitter Profile"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-dark btn-social mx-2" href="#!"
                                        aria-label="Parveen Anand Facebook Profile"><i
                                            class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-dark btn-social mx-2" href="#!"
                                        aria-label="Parveen Anand LinkedIn Profile"><i
                                            class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="team-member">
                                    <img class="mx-auto rounded-circle" src="assets/img/team/2.jpg" alt="..." />
                                    <h4>Diana Petersen</h4>
                                    <p class="text-muted">Lead Marketer</p>
                                    <a class="btn btn-dark btn-social mx-2" href="#!"
                                        aria-label="Diana Petersen Twitter Profile"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-dark btn-social mx-2" href="#!"
                                        aria-label="Diana Petersen Facebook Profile"><i
                                            class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-dark btn-social mx-2" href="#!"
                                        aria-label="Diana Petersen LinkedIn Profile"><i
                                            class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="team-member">
                                    <img class="mx-auto rounded-circle" src="assets/img/team/3.jpg" alt="..." />
                                    <h4>Larry Parker</h4>
                                    <p class="text-muted">Lead Developer</p>
                                    <a class="btn btn-dark btn-social mx-2" href="#!"
                                        aria-label="Larry Parker Twitter Profile"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-dark btn-social mx-2" href="#!"
                                        aria-label="Larry Parker Facebook Profile"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-dark btn-social mx-2" href="#!"
                                        aria-label="Larry Parker LinkedIn Profile"><i
                                            class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 mx-auto text-center">
                                <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Aut eaque,
                                    laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut
                                    unde.</p>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Clients-->
                <div class="py-5">
                    <div class="container">
                        <div class="row align-items-center">
                            <!-- <div class="col-md-3 col-sm-6 my-3">
                    <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="assets/img/logos/microsoft.svg"
                            alt="..." aria-label="Microsoft Logo" /></a>
                </div>
                <div class="col-md-3 col-sm-6 my-3">
                    <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="assets/img/logos/google.svg"
                            alt="..." aria-label="Google Logo" /></a>
                </div>
                <div class="col-md-3 col-sm-6 my-3">
                    <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="assets/img/logos/facebook.svg"
                            alt="..." aria-label="Facebook Logo" /></a>
                </div>
                <div class="col-md-3 col-sm-6 my-3">
                    <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="assets/img/logos/ibm.svg"
                            alt="..." aria-label="IBM Logo" /></a>
                </div> -->
                            <div class="survey-wrap survey-wrap-cate">

                                <div class="crm-survey-render" data-type="QUESTION_FORM" data-applicationid="1"
                                    data-programid="442" data-programcode="6499B11B3D461F2" data-siteid="1"
                                    data-provinceid="3" data-districtid="0" data-attributeid-2="Laptop" data-wardid="0">
                                    <div id="survey-question-form"
                                        class="main-form-programid442 survey-system-question-form-Thegioididong program_442 svelte-1pwfq7v">
                                        <div class="crm-wrapper-survey">
                                            <div class="main-form" style="border-color: rgb(255, 212, 0);">
                                                <div id="crm-question-form-null-442">
                                                    <div class="flex-container svelte-cktoy5">
                                                        <div
                                                            class="crm-ask-and-answer_survey_system flex-reverse-direction">
                                                            <div class="wrap_question_survey_system">
                                                                <div class="crm-ask" style="text-align: left;"><span
                                                                        class="question-name"
                                                                        style="font-style: normal; font-weight: 600; font-size: 13px; line-height: 18px; color: rgb(81, 87, 100); flex: 0 0 auto; order: 0;">Bạn
                                                                        có hài lòng với trải nghiệm tìm kiếm thông tin,
                                                                        sản
                                                                        phẩm
                                                                        trên website không?</span></div>
                                                            </div>
                                                            <div id="wrap_lst_answer_questionid1284"
                                                                class="wrap_lst_answer_Horizontal svelte-cktoy5">
                                                                <div id="div-button-crm-survey" class="svelte-unsrhu">
                                                                    <div class="wrap_anwser_survey_system_survey_system svelte-13ainzo"
                                                                        style="width: 100%;float: left; --backgroundColorMain:#ffd400">
                                                                        <div key="5020"
                                                                            class="answer-input dflex svelte-13ainzo"
                                                                            style="height: 100%;"><button
                                                                                class="crmsurvey-btnanswer-icon svelte-13ainzo"
                                                                                style="border-color: rgb(255, 212, 0);">
                                                                                <div style="flex: 1 0 0%;"><img
                                                                                        src="https://cdn.tgdd.vn/crmweb/survey/img/icon-happy.png"
                                                                                        alt="radio_5020"
                                                                                        class="hoverScale transition-hover surver-img-hasIcon svelte-13ainzo">
                                                                                </div>
                                                                                <div style="flex: 1 0 0%;"><span
                                                                                        class="surver-text-hasIcon svelte-13ainzo"
                                                                                        style="line-height: 20px;">Hài
                                                                                        lòng</span>
                                                                                </div>
                                                                            </button></div>
                                                                    </div>
                                                                    <div class="wrap_anwser_survey_system_survey_system svelte-13ainzo"
                                                                        style="width: 100%;float: left; --backgroundColorMain:#ffd400">
                                                                        <div key="5021"
                                                                            class="answer-input dflex svelte-13ainzo"
                                                                            style="height: 100%;"><button
                                                                                class="crmsurvey-btnanswer-icon svelte-13ainzo"
                                                                                style="border-color: rgb(255, 212, 0);">
                                                                                <div style="flex: 1 0 0%;"><img
                                                                                        src="https://cdn.tgdd.vn/crmweb/survey/img/icon-bad.png"
                                                                                        alt="radio_5021"
                                                                                        class="hoverScale transition-hover surver-img-hasIcon svelte-13ainzo">
                                                                                </div>
                                                                                <div style="flex: 1 0 0%;"><span
                                                                                        class="surver-text-hasIcon svelte-13ainzo"
                                                                                        style="line-height: 20px;">Không
                                                                                        hài
                                                                                        lòng</span></div>
                                                                            </button></div>
                                                                    </div>
                                                                </div>
                                                                <div id="div-text-crm-survey" class="svelte-unsrhu">
                                                                </div>
                                                                <div></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="crmspantextinputerror"></div>
                                                </div>
                                                <div id="main-form-tks-programid-null-442"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <link href="//cdn.tgdd.vn/crmweb/survey/js/survey.min.v202502270610.css"
                                    rel="stylesheet" type="text/css">
                                <script defer="defer" async="async"
                                    src="//cdn.tgdd.vn/crmweb/survey/js/survey.min.v202502270610.js"></script>


                            </div>



                        </div>
                    </div>
                </div>
                <!-- Contact-->
                <section class="page-section" id="contact">
                    <div class="container">
                        <div class="text-center">
                            <h2 class="section-heading text-uppercase">Contact Us</h2>
                            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                        </div>
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                            <div class="row align-items-stretch mb-5">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <!-- Name input-->
                                        <input class="form-control" id="name" type="text" placeholder="Your Name *"
                                            data-sb-validations="required" />
                                        <div class="invalid-feedback" data-sb-feedback="name:required">A name is
                                            required.</div>
                                    </div>
                                    <div class="form-group">
                                        <!-- Email address input-->
                                        <input class="form-control" id="email" type="email" placeholder="Your Email *"
                                            data-sb-validations="required,email" />
                                        <div class="invalid-feedback" data-sb-feedback="email:required">An email is
                                            required.</div>
                                        <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.
                                        </div>
                                    </div>
                                    <div class="form-group mb-md-0">
                                        <!-- Phone number input-->
                                        <input class="form-control" id="phone" type="tel" placeholder="Your Phone *"
                                            data-sb-validations="required" />
                                        <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number
                                            is required.
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group form-group-textarea mb-md-0">
                                        <!-- Message input-->
                                        <textarea class="form-control" id="message" placeholder="Your Message *"
                                            data-sb-validations="required"></textarea>
                                        <div class="invalid-feedback" data-sb-feedback="message:required">A message is
                                            required.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center text-white mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    To activate this form, sign up at
                                    <br />
                                    <a
                                        href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                </div>
                            </div>
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <div class="d-none" id="submitErrorMessage">
                                <div class="text-center text-danger mb-3">Error sending message!</div>
                            </div>
                            <!-- Submit Button-->
                            <div class="text-center"><button class="btn btn-primary btn-xl text-uppercase disabled"
                                    id="submitButton" type="submit">Send Message</button></div>
                        </form>
                    </div>
                </section>
                <!-- Footer-->
                <footer class="footer py-4">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-4 text-lg-start">Copyright &copy; Your Website 2023</div>
                            <div class="col-lg-4 my-3 my-lg-0">
                                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i
                                        class="fab fa-twitter"></i></a>
                                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i
                                        class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i
                                        class="fab fa-linkedin-in"></i></a>
                            </div>
                            <div class="col-lg-4 text-lg-end">
                                <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                                <a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- Portfolio Modals-->
                <!-- Portfolio item 1 modal popup-->
                <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg"
                                    alt="Close modal" /></div>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-8">
                                        <div class="modal-body">
                                            <!-- Project details-->
                                            <h2 class="text-uppercase">Project Name</h2>
                                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                            <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/1.jpg"
                                                alt="..." />
                                            <p>Use this area to describe your project. Lorem ipsum dolor sit amet,
                                                consectetur
                                                adipisicing elit. Est blanditiis dolorem culpa incidunt minus
                                                dignissimos deserunt
                                                repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores
                                                repudiandae,
                                                nostrum, reiciendis facere nemo!</p>
                                            <ul class="list-inline">
                                                <li>
                                                    <strong>Client:</strong>
                                                    Threads
                                                </li>
                                                <li>
                                                    <strong>Category:</strong>
                                                    Illustration
                                                </li>
                                            </ul>
                                            <button class="btn btn-primary btn-xl text-uppercase"
                                                data-bs-dismiss="modal" type="button">
                                                <i class="fas fa-xmark me-1"></i>
                                                Close Project
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Portfolio item 2 modal popup-->
                <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg"
                                    alt="Close modal" /></div>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-8">
                                        <div class="modal-body">
                                            <!-- Project details-->
                                            <h2 class="text-uppercase">Project Name</h2>
                                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                            <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/2.jpg"
                                                alt="..." />
                                            <p>Use this area to describe your project. Lorem ipsum dolor sit amet,
                                                consectetur
                                                adipisicing elit. Est blanditiis dolorem culpa incidunt minus
                                                dignissimos deserunt
                                                repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores
                                                repudiandae,
                                                nostrum, reiciendis facere nemo!</p>
                                            <ul class="list-inline">
                                                <li>
                                                    <strong>Client:</strong>
                                                    Explore
                                                </li>
                                                <li>
                                                    <strong>Category:</strong>
                                                    Graphic Design
                                                </li>
                                            </ul>
                                            <button class="btn btn-primary btn-xl text-uppercase"
                                                data-bs-dismiss="modal" type="button">
                                                <i class="fas fa-xmark me-1"></i>
                                                Close Project
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Portfolio item 3 modal popup-->
                <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg"
                                    alt="Close modal" /></div>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-8">
                                        <div class="modal-body">
                                            <!-- Project details-->
                                            <h2 class="text-uppercase">Project Name</h2>
                                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                            <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/3.jpg"
                                                alt="..." />
                                            <p>Use this area to describe your project. Lorem ipsum dolor sit amet,
                                                consectetur
                                                adipisicing elit. Est blanditiis dolorem culpa incidunt minus
                                                dignissimos deserunt
                                                repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores
                                                repudiandae,
                                                nostrum, reiciendis facere nemo!</p>
                                            <ul class="list-inline">
                                                <li>
                                                    <strong>Client:</strong>
                                                    Finish
                                                </li>
                                                <li>
                                                    <strong>Category:</strong>
                                                    Identity
                                                </li>
                                            </ul>
                                            <button class="btn btn-primary btn-xl text-uppercase"
                                                data-bs-dismiss="modal" type="button">
                                                <i class="fas fa-xmark me-1"></i>
                                                Close Project
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Portfolio item 4 modal popup-->
                <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg"
                                    alt="Close modal" /></div>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-8">
                                        <div class="modal-body">
                                            <!-- Project details-->
                                            <h2 class="text-uppercase">Project Name</h2>
                                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                            <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/4.jpg"
                                                alt="..." />
                                            <p>Use this area to describe your project. Lorem ipsum dolor sit amet,
                                                consectetur
                                                adipisicing elit. Est blanditiis dolorem culpa incidunt minus
                                                dignissimos deserunt
                                                repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores
                                                repudiandae,
                                                nostrum, reiciendis facere nemo!</p>
                                            <ul class="list-inline">
                                                <li>
                                                    <strong>Client:</strong>
                                                    Lines
                                                </li>
                                                <li>
                                                    <strong>Category:</strong>
                                                    Branding
                                                </li>
                                            </ul>
                                            <button class="btn btn-primary btn-xl text-uppercase"
                                                data-bs-dismiss="modal" type="button">
                                                <i class="fas fa-xmark me-1"></i>
                                                Close Project
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Portfolio item 5 modal popup-->
                <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg"
                                    alt="Close modal" /></div>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-8">
                                        <div class="modal-body">
                                            <!-- Project details-->
                                            <h2 class="text-uppercase">Project Name</h2>
                                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                            <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/5.jpg"
                                                alt="..." />
                                            <p>Use this area to describe your project. Lorem ipsum dolor sit amet,
                                                consectetur
                                                adipisicing elit. Est blanditiis dolorem culpa incidunt minus
                                                dignissimos deserunt
                                                repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores
                                                repudiandae,
                                                nostrum, reiciendis facere nemo!</p>
                                            <ul class="list-inline">
                                                <li>
                                                    <strong>Client:</strong>
                                                    Southwest
                                                </li>
                                                <li>
                                                    <strong>Category:</strong>
                                                    Website Design
                                                </li>
                                            </ul>
                                            <button class="btn btn-primary btn-xl text-uppercase"
                                                data-bs-dismiss="modal" type="button">
                                                <i class="fas fa-xmark me-1"></i>
                                                Close Project
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Portfolio item 6 modal popup-->
                <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg"
                                    alt="Close modal" /></div>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-8">
                                        <div class="modal-body">
                                            <!-- Project details-->
                                            <h2 class="text-uppercase">Project Name</h2>
                                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                            <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/6.jpg"
                                                alt="..." />
                                            <p>Use this area to describe your project. Lorem ipsum dolor sit amet,
                                                consectetur
                                                adipisicing elit. Est blanditiis dolorem culpa incidunt minus
                                                dignissimos deserunt
                                                repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores
                                                repudiandae,
                                                nostrum, reiciendis facere nemo!</p>
                                            <ul class="list-inline">
                                                <li>
                                                    <strong>Client:</strong>
                                                    Window
                                                </li>
                                                <li>
                                                    <strong>Category:</strong>
                                                    Photography
                                                </li>
                                            </ul>
                                            <button class="btn btn-primary btn-xl text-uppercase"
                                                data-bs-dismiss="modal" type="button">
                                                <i class="fas fa-xmark me-1"></i>
                                                Close Project
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Bootstrap core JS-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS-->
                <script src="/client/js/homepage.js"></script>
                <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
                <!-- * *                               SB Forms JS                               * *-->
                <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
                <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
                <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
            </body>

            </html>