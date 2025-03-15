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

                    .label {
                        color: #ff9800;
                        /* Màu chữ "Hài lòng" và "Không hài lòng" */
                    }

                    .check {
                        font-family: 'Island Moments', cursive;
                        font-size: 57px;
                    }

                    .BannerTheme_sliderWrap__csOTb .container img {
                        position: absolute;
                        top: 50%;
                        left: 50%;
                        transform: translate(-50%, -50%);
                        z-index: 2;
                    }

                    .overlap-container {
                        position: relative;
                        width: 100%;
                        /* Ensure the container takes up the full width */
                        height: auto;
                        /* Adjust height based on the background image */
                    }

                    .overlap-container img:first-child {
                        position: relative;
                        /* Background image remains in its normal flow */
                        width: 100%;
                        /* Ensure the background image spans the container */
                        height: auto;
                    }

                    .overlap-container .foreground-img {
                        position: absolute;
                        top: 50%;
                        left: 50%;
                        transform: translate(-50%, -50%);
                        /* Center the foreground image */
                        z-index: 2;
                        /* Ensure it overlaps the background */
                    }

                    .carousel-item {
                        position: relative;
                    }

                    .card-content {
                        position: absolute;
                        bottom: 20px;
                        left: 20px;
                        background: rgba(0, 0, 0, 0.5);
                        color: white;
                        padding: 20px;
                        border-radius: 8px;
                    }

                    .card-content h3,
                    .card-content p,
                    .card-content a {
                        margin: 0;
                        padding: 5px 0;
                    }

                    .card-content a {
                        color: #ffcc00;
                        text-decoration: underline;
                    }

                    .carousel-item img {
                        height: 400px;
                        object-fit: cover;
                    }

                    @media (max-width: 768px) {
                        .check {
                            font-size: 36px;
                        }

                        .BannerTheme_sliderWrap__csOTb .container img {
                            transform: translate(-50%, -50%);
                            width: 80%;
                        }
                    }
                </style>
            </head>

            <body id="page-top">
                <!-- Navigation -->
                <jsp:include page="layout/header.jsp" />

                <!-- Masthead -->
                <div class="BannerTheme_sliderWrap__csOTb">
                    <a class="BannerTheme_sliderItem__0Yheb BannerTheme_fadeIn__f2GRS" href="/" target="_blank"
                        rel="dofollow" draggable="false">
                        <div class="bg-[length:100%_auto] bg-[center_top] bg-no-repeat BannerTheme_sliderBg__lb4oh"
                            style="background-color:#F3F4F6 !important">
                            <div class="overlap-container">
                                <div class="overlap-container">
                                    <img alt="background" fetchpriority="high" class="img-fluid" decoding="async"
                                        src="https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:quality(100)/desk_header_bg_2_fc50affb12.png">
                                    <img alt="foreground" class="foreground-img img-fluid"
                                        src="https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:quality(100)/desk_header_11f5decdf9.png">
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="container my-4">
                    <h2 class="section-heading text-center mb-4">Tất cả sản phẩm </h2>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn.viettelstore.vn/Images/Product/ProductImage/70698293.jpeg"
                                    class="card-img-top img-fluid" alt="Xiaomi Redmi Note 14">
                                <div class="card-body">
                                    <h5 class="card-title">Xiaomi Redmi Note </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="text-primary fw-bold">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
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
                            <div class="card">
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
                            <div class="card">
                                <img src="https://didongthongminh.vn/images/products/2025/02/08/original/A60_5g.jpg"
                                    class="card-img-top img-fluid" alt="OPPO A60">
                                <div class="card-body">
                                    <h5 class="card-title">OPPO A60 </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/s/_sm-a536_04._device_design_m_1_2.jpg"
                                    class="card-img-top img-fluid" alt="Xiaomi Redmi Note 14">
                                <div class="card-body">
                                    <h5 class="card-title">Samsung A50</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="text-primary fw-bold">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/x/media/catalog/product/s/s/ss-s24-ultra-xam-222.png"
                                    class="card-img-top img-fluid" alt="iPhone 15 Pro Max">
                                <div class="card-body">
                                    <h5 class="card-title">Samsung S24 Ultra</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">32.890.000₫</p>
                                    <p class="text-muted">Quà 1.000.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://clickbuy.com.vn/uploads/pro/iphone-16-8975-lthx-300x300-217852.jpg"
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
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-xiaomi-redmi-note-14_2__2.png"
                                    class="card-img-top img-fluid" alt="OPPO A60">
                                <div class="card-body">
                                    <h5 class="card-title">OPPO A60 </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn.viettelstore.vn/Images/Product/ProductImage/70698293.jpeg"
                                    class="card-img-top img-fluid" alt="Xiaomi Redmi Note 14">
                                <div class="card-body">
                                    <h5 class="card-title">Xiaomi Redmi Note </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="text-primary fw-bold">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
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
                            <div class="card">
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
                            <div class="card">
                                <img src="https://didongthongminh.vn/images/products/2025/02/08/original/A60_5g.jpg"
                                    class="card-img-top img-fluid" alt="OPPO A60">
                                <div class="card-body">
                                    <h5 class="card-title">OPPO A60 </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/s/_sm-a536_04._device_design_m_1_2.jpg"
                                    class="card-img-top img-fluid" alt="Xiaomi Redmi Note 14">
                                <div class="card-body">
                                    <h5 class="card-title">Samsung A50</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="text-primary fw-bold">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/x/media/catalog/product/s/s/ss-s24-ultra-xam-222.png"
                                    class="card-img-top img-fluid" alt="iPhone 15 Pro Max">
                                <div class="card-body">
                                    <h5 class="card-title">Samsung S24 Ultra</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">32.890.000₫</p>
                                    <p class="text-muted">Quà 1.000.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://clickbuy.com.vn/uploads/pro/iphone-16-8975-lthx-300x300-217852.jpg"
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
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-xiaomi-redmi-note-14_2__2.png"
                                    class="card-img-top img-fluid" alt="OPPO A60">
                                <div class="card-body">
                                    <h5 class="card-title">OPPO A60 </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn.viettelstore.vn/Images/Product/ProductImage/70698293.jpeg"
                                    class="card-img-top img-fluid" alt="Xiaomi Redmi Note 14">
                                <div class="card-body">
                                    <h5 class="card-title">Xiaomi Redmi Note </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="text-primary fw-bold">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
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
                            <div class="card">
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
                            <div class="card">
                                <img src="https://didongthongminh.vn/images/products/2025/02/08/original/A60_5g.jpg"
                                    class="card-img-top img-fluid" alt="OPPO A60">
                                <div class="card-body">
                                    <h5 class="card-title">OPPO A60 </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/s/_sm-a536_04._device_design_m_1_2.jpg"
                                    class="card-img-top img-fluid" alt="Xiaomi Redmi Note 14">
                                <div class="card-body">
                                    <h5 class="card-title">Samsung A50</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="text-primary fw-bold">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/x/media/catalog/product/s/s/ss-s24-ultra-xam-222.png"
                                    class="card-img-top img-fluid" alt="iPhone 15 Pro Max">
                                <div class="card-body">
                                    <h5 class="card-title">Samsung S24 Ultra</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">32.890.000₫</p>
                                    <p class="text-muted">Quà 1.000.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://clickbuy.com.vn/uploads/pro/iphone-16-8975-lthx-300x300-217852.jpg"
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
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-xiaomi-redmi-note-14_2__2.png"
                                    class="card-img-top img-fluid" alt="OPPO A60">
                                <div class="card-body">
                                    <h5 class="card-title">OPPO A60 </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center my-4">
                        <button type="button" class="btn btn-outline-secondary">Xem thêm</button>
                    </div>
                </div>
                <jsp:include page="./layout/experience.jsp" />

                <!-- Footer -->
                <jsp:include page="layout/footer.jsp" />

                <!-- Bootstrap core JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS -->
                <script src="/client/js/homepage.js"></script>
            </body>

            </html>