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
                <title>Dashboard</title>
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
                    .rating-box {
                        background-color: #fff9c4;
                        /* Màu nền khung */
                        border: 2px solid #ffeb3b;
                        /* Viền khung */
                        border-radius: 10px;
                        padding: 20px;
                        text-align: center;
                        width: 400px;
                        /* Độ rộng khung */
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                    }

                    .question {
                        font-size: 18px;
                        margin-bottom: 20px;
                    }

                    .options {
                        display: flex;
                        justify-content: space-around;
                    }

                    .option {
                        background-color: transparent;
                        border: none;
                        font-size: 16px;
                        cursor: pointer;
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        outline: none;
                    }

                    .emoji {
                        font-size: 30px;
                        margin-bottom: 5px;
                    }

                    .contact-form {
                        width: 500px;
                        /* Độ rộng form */
                        padding: 30px;
                        background-color: #fff;
                        /* Màu nền form */
                        border-radius: 8px;
                        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                    }

                    .form-row {
                        display: flex;
                        justify-content: space-between;
                    }

                    .form-group {
                        margin-bottom: 20px;
                        width: 100%;
                    }

                    .form-group label {
                        display: block;
                        margin-bottom: 5px;
                        font-weight: bold;
                    }

                    .form-group input[type="text"],
                    .form-group input[type="email"],
                    .form-group textarea {
                        width: calc(100% - 22px);
                        /* Trừ đi padding và border */
                        padding: 10px;
                        border: 1px solid #ddd;
                        border-radius: 5px;
                        font-size: 16px;
                        resize: vertical;
                        /* Cho phép thay đổi chiều cao textarea */
                    }

                    .form-group textarea {
                        height: 150px;
                    }

                    .check {
                        font-family: 'Island Moments', cursive;
                        font-size: 57px;
                    }

                    .card-img-top {
                        height: 300px;
                        /* Adjust the height as needed */
                        object-fit: cover;
                        /* Ensures the image fits nicely within the height */
                    }

                    .card-body {
                        padding: 10px;
                        /* Reduce padding to make the card more compact */
                    }

                    .card-title {
                        font-size: 16px;
                        /* Adjust font size for a smaller title */
                        margin-bottom: 5px;
                    }

                    .card-text {
                        font-size: 14px;
                        /* Adjust font size for smaller text */
                        margin-bottom: 5px;
                    }

                    @media (max-width: 768px) {
                        .check {
                            font-size: 28px;
                            /* Adjust title size for smaller screens */
                        }
                    }
                </style>
            </head>

            <body id="page-top">
                <!-- Navigation -->
                <jsp:include page="layout/header.jsp" />





                <jsp:include page="./layout/experience.jsp" />
                <div class="container">
                    <h1 class="check mb-4">Sản phẩm liên quan</h1>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card h-100">
                                <img src="https://cdn.viettelstore.vn/Images/Product/ProductImage/70698293.jpeg"
                                    class="card-img-top img-fluid" alt="Xiaomi Redmi Note 14">
                                <div class="card-body">
                                    <h5 class="card-title">Xiaomi Redmi Note</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="text-primary fw-bold">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card h-100">
                                <img src="https://cdn.tgdd.vn/Products/Images/42/305658/iphone-15-pro-max-blue-thumbnew-600x600.jpg"
                                    class="card-img-top img-fluid" alt="iPhone 15 Pro Max">
                                <div class="card-body">
                                    <h5 class="card-title">iPhone 15 Pro Max</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">32.890.000₫</p>
                                    <p class="text-muted">Quà 1.000.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card h-100">
                                <img src="https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/5/15_2_7_2_5.jpg"
                                    class="card-img-top img-fluid" alt="iPhone 13">
                                <div class="card-body">
                                    <h5 class="card-title">iPhone 13</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">12.850.000₫</p>
                                    <p class="text-muted">Quà 500.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card h-100">
                                <img src="https://didongthongminh.vn/images/products/2025/02/08/original/A60_5g.jpg"
                                    class="card-img-top img-fluid" alt="OPPO A60">
                                <div class="card-body">
                                    <h5 class="card-title">OPPO A60</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer -->
                <jsp:include page="layout/footer.jsp" />

                <!-- Bootstrap core JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS -->
                <script src="/client/js/homepage.js"></script>
            </body>

            </html>