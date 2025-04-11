<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>Dashboard</title>
            <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
            <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet"
                type="text/css" />
            <link href="/client/css/homepage.css" rel="stylesheet" />
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link
                href="https://fonts.googleapis.com/css2?family=Inria+Serif:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&family=Island+Moments&display=swap"
                rel="stylesheet">
            <link href="https://fonts.googleapis.com/css2?family=Jacques+Francois+Shadow&display=swap" rel="stylesheet">

            <style>
                /* Responsive adjustments */
                @media (max-width: 1200px) {
                    .featurs-item {
                        padding: 30px 20px !important;
                    }

                    .featurs-icon i {
                        font-size: 3rem !important;
                    }

                    .featurs-content h5 {
                        font-size: 1.3rem !important;
                    }

                    .featurs-content p {
                        font-size: 1rem !important;
                    }
                }

                @media (max-width: 768px) {
                    .alert {
                        font-size: 1rem;
                        text-align: center;
                    }

                    .btn-success {
                        width: 100%;
                        font-size: 1rem;
                    }

                    .featurs {
                        padding-top: 50px !important;
                        padding-bottom: 50px !important;
                    }

                    .featurs-item {
                        padding: 20px 15px !important;
                    }

                    .featurs-icon i {
                        font-size: 2.5rem !important;
                    }

                    .featurs-content h5 {
                        font-size: 1.2rem !important;
                    }

                    .featurs-content p {
                        font-size: 0.9rem !important;
                    }
                }

                @media (max-width: 576px) {
                    .alert {
                        font-size: 0.9rem;
                    }

                    .btn-success {
                        font-size: 0.9rem;
                    }

                    .featurs {
                        padding-top: 30px !important;
                        padding-bottom: 30px !important;
                    }

                    .featurs-item {
                        padding: 15px 10px !important;
                    }

                    .featurs-icon i {
                        font-size: 2rem !important;
                    }

                    .featurs-content h5 {
                        font-size: 1rem !important;
                    }

                    .featurs-content p {
                        font-size: 0.8rem !important;
                    }
                }
            </style>

        </head>

        <body>




            <jsp:include page="../layout/header.jsp" />

            <div class="container" style="margin-top: 100px;">
                <div class="row ">
                    <div class="col-12 mt-5">
                        <div class="alert alert-success" role="alert">
                            Cảm ơn bạn đã đặt hàng. Đơn hàng đã được xác nhận thành công.
                        </div>
                        <a href="/" class="btn btn-success">Tiếp tục mua hàng</a>
                    </div>
                </div>
            </div>

            <div class="container-fluid featurs py-5" style="margin-bottom: 57px;">
                <div class="container py-5">
                    <div class="row g-4">

                        <div class="col-md-6 col-lg-3"
                            style="display: flex; justify-content: center; flex-direction: column;">

                            <div class="featurs-icon mb-5 mx-auto">
                                <i class="fas fa-car-side fa-3x text-black"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>Free Shipping</h5>
                                <p class="mb-0">Hỏa tốc trong 2h</p>
                            </div>
                        </div>


                        <div class="col-md-6 col-lg-3"
                            style="display: flex; justify-content: center; flex-direction: column;">

                            <div class="featurs-icon mb-5 mx-auto">
                                <i class="fas fa-user-shield fa-3x text-black"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>Security Payment</h5>
                                <p class="mb-0">Giao dịch an toàn</p>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3"
                            style="display: flex; justify-content: center; flex-direction: column;">

                            <div class="featurs-icon mb-5 mx-auto">
                                <i class="fas fa-exchange-alt fa-3x text-black"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>30 Day Return</h5>
                                <p class="mb-0">Đổi trả miễn phí</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3"
                            style="display: flex; justify-content: center; flex-direction: column;">

                            <div class="featurs-icon mb-5 mx-auto">
                                <i class="fa fa-phone-alt fa-3x text-black"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>24/7 Support</h5>
                                <p class="mb-0">Hỗ trợ nhiệt tình</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="../layout/footer.jsp" />




            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>


        </body>

        </html>