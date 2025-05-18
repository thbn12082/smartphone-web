<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
                <link rel="icon" type="image/png" href="img/favicon.png">
                <title>
                    TheBinh
                </title>
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
                <!--     Fonts and icons     -->
                <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
                <!-- Nucleo Icons -->
                <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-icons.css"
                    rel="stylesheet" />
                <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-svg.css"
                    rel="stylesheet" />

                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <!-- CSS Files -->
                <link href="/css/dashboard.css" rel="stylesheet" />
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>


                <style>
                    /* General improvements */
                    .navbar {
                        background-color: #f8f9fa !important;
                        padding: 10px 20px;
                    }

                    .navbar a {
                        color: #333;
                        text-decoration: none;
                        font-size: 18px;
                        margin-right: 15px;
                    }

                    .navbar a:hover {
                        color: #007bff;
                    }

                    .dropdown-menu {
                        min-width: 250px;
                    }

                    .dropdown-menu img {
                        width: 100px;
                        height: 100px;
                        border-radius: 50%;
                    }

                    /* Satisfaction stats */
                    .satisfaction-stats {
                        max-width: 400px;
                        margin: 20px auto;
                        text-align: center;
                        font-family: 'Open Sans', sans-serif;
                    }

                    .stats {
                        display: flex;
                        justify-content: space-around;
                        margin-bottom: 20px;
                    }

                    .satisfied,
                    .dissatisfied {
                        padding: 15px;
                        border-radius: 8px;
                        text-align: center;
                    }

                    .satisfied {
                        background-color: #e6f7e6;
                        color: #27ae60;
                    }

                    .dissatisfied {
                        background-color: #ffe6e6;
                        color: #e74c3c;
                    }

                    .stats span {
                        font-size: 1.8em;
                        font-weight: bold;
                        display: block;
                    }

                    /* Responsive adjustments */
                    @media (max-width: 768px) {
                        .navbar a {
                            font-size: 16px;
                        }

                        .satisfaction-stats {
                            width: 100%;
                            padding: 10px;
                        }

                        .stats {
                            flex-direction: column;
                        }

                        .satisfied,
                        .dissatisfied {
                            width: 100%;
                            margin-bottom: 10px;
                        }
                    }

                    @media (max-width: 576px) {
                        .navbar a {
                            font-size: 14px;
                        }

                        .dropdown-menu {
                            min-width: 200px;
                        }

                        .dropdown-menu img {
                            width: 80px;
                            height: 80px;
                        }

                        .stats span {
                            font-size: 1.5em;
                        }
                    }
                </style>
            </head>

            <body class="g-sidenav-show   bg-gray-100">
                <div class="min-height-300 bg-dark position-absolute w-100"></div>
                <jsp:include page="../layout/sidebar.jsp" />
                <div class="container-fluid py-4">
                    <div class="row" style="margin-top: 94px;">


                        <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4"> <a href="/admin/user">
                                <div class="card">
                                    <div class="card-body p-3">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">So luong
                                                        User
                                                    </p>
                                                    <h5 class="font-weight-bolder">
                                                        ${countUser}
                                                    </h5>

                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div
                                                    class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                                                    <i class="ni ni-money-coins text-lg opacity-10"
                                                        aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>



                        <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4"><a href="/admin/product">
                                <div class="card">
                                    <div class="card-body p-3">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">So luong
                                                        Product
                                                    </p>
                                                    <h5 class="font-weight-bolder">
                                                        ${countProduct}
                                                    </h5>

                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div
                                                    class="icon icon-shape bg-gradient-danger shadow-danger text-center rounded-circle">
                                                    <i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>


                        <div class="col-xl-4 col-sm-6 mb-xl-0 mb-4">
                            <a href="/admin/order">
                                <div class="card">
                                    <div class="card-body p-3">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-uppercase font-weight-bold">So luong
                                                        Order
                                                    </p>
                                                    <h5 class="font-weight-bolder">
                                                        ${countOrder}
                                                    </h5>

                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div
                                                    class="icon icon-shape bg-gradient-success shadow-success text-center rounded-circle">
                                                    <i class="ni ni-paper-diploma text-lg opacity-10"
                                                        aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>



                    </div>
                    <!-- <div class="row mt-4">
                        <div class="col-lg-7 mb-lg-0 mb-4">
                            <div class="card z-index-2 h-100">
                                <div class="card-header pb-0 pt-3 bg-transparent">
                                    <div class="satisfaction-stats">
                                        <h2>Mức độ hài lòng của khách hàng</h2>
                                        <div class="stats">
                                            <div class="satisfied">
                                                <span id="satisfied-count">0</span>
                                                <p>Hài lòng</p>
                                            </div>
                                            <div class="dissatisfied">
                                                <span id="dissatisfied-count">0</span>
                                                <p>Không hài lòng</p>
                                            </div>
                                        </div>
                                        <div class="percentage">
                                            <p>Tỷ lệ hài lòng: <span id="satisfaction-percentage">0</span>%</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="card card-carousel overflow-hidden h-100 p-0">
                                <div id="carouselExampleCaptions" class="carousel slide h-100" data-bs-ride="carousel">
                                    <div class="carousel-inner border-radius-lg h-100">
                                        <div class="carousel-item h-100 active" style="background-image: url('https://img.youtube.com/vi/GDlkCkcIqTs/maxresdefault.jpg');
                        background-size: cover;">
                                            <div
                                                class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                                                <div
                                                    class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                                                    <i class="ni ni-camera-compact text-dark opacity-10"></i>
                                                </div>
                                                <h5 class="text-white mb-1">Get started with Argon</h5>
                                                <p>There’s nothing I really wanted to do in life that I wasn’t able
                                                    to get good at.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item h-100" style="background-image: url('https://cdn.tgdd.vn/Files/2022/08/18/1457016/4-tinh-nang-an-tren-ipad-001_1280x720-800-resize.jpg');
                        background-size: cover;">
                                            <div
                                                class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                                                <div
                                                    class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                                                    <i class="ni ni-bulb-61 text-dark opacity-10"></i>
                                                </div>
                                                <h5 class="text-white mb-1">Faster way to create web pages</h5>
                                                <p>That’s my skill. I’m not really specifically talented at anything
                                                    except for the ability to
                                                    learn.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item h-100" style="background-image: url('https://i.insider.com/65c4f207917a1dae02447572?width=700');
                        background-size: cover;">
                                            <div
                                                class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                                                <div
                                                    class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                                                    <i class="ni ni-trophy text-dark opacity-10"></i>
                                                </div>
                                                <h5 class="text-white mb-1">Share with us your design tips!</h5>
                                                <p>Don’t be afraid to be wrong because you can’t learn anything from
                                                    a compliment.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="carousel-control-prev w-5 me-3" type="button"
                                        data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next w-5 me-3" type="button"
                                        data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
                </main>
                </div>
                <!--   Core JS Files   -->
                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
                <script>
                    document.addEventListener("DOMContentLoaded", function () {
                        // Simulated data
                        const satisfiedCount = 150;
                        const dissatisfiedCount = 30;

                        // Get DOM elements
                        const satisfiedElement = document.getElementById('satisfied-count');
                        const dissatisfiedElement = document.getElementById('dissatisfied-count');
                        const satisfactionPercentageElement = document.getElementById('satisfaction-percentage');

                        if (satisfiedElement && dissatisfiedElement && satisfactionPercentageElement) {
                            // Display data
                            satisfiedElement.textContent = satisfiedCount;
                            dissatisfiedElement.textContent = dissatisfiedCount;

                            // Calculate and display satisfaction percentage
                            const totalCount = satisfiedCount + dissatisfiedCount;
                            const satisfactionPercentage = totalCount > 0
                                ? ((satisfiedCount / totalCount) * 100).toFixed(1)
                                : 0;
                            satisfactionPercentageElement.textContent = satisfactionPercentage;
                        } else {
                            console.error("One or more satisfaction stats elements are missing.");
                        }
                    });
                </script>
            </body>

            </html>