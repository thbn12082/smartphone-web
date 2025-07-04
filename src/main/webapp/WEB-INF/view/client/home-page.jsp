<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
                        crossorigin="anonymous"></script>
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
                    <link href="https://fonts.googleapis.com/css2?family=Jacques+Francois+Shadow&display=swap"
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

                        .my-element {
                            font-family: "Jacques Francois Shadow", serif;
                            font-weight: 400;
                            font-style: normal;
                        }

                        .card-img-top {
                            width: 100%;
                            /* Đảm bảo ảnh chiếm toàn bộ chiều rộng thẻ cha */
                            height: 300px;
                            /* Đặt chiều cao mong muốn (điều chỉnh theo nhu cầu) */
                            object-fit: cover;
                            /* Cắt ảnh để lấp đầy vùng chứa, giữ nguyên tỷ lệ khung hình */
                        }

                        .card-text {
                            max-height: 50px;
                            /* Ví dụ: giới hạn chiều cao tối đa là 50px (điều chỉnh theo nhu cầu) */
                            overflow: hidden;
                        }
                    </style>
                </head>

                <body id="page-top">
                    <!-- Navigation -->
                    <jsp:include page="layout/header.jsp" />

                    <!-- Masthead -->
                    <div class="BannerTheme_sliderWrap__csOTb " style="margin-top: 20vh;">
                        <div class="container">
                            <h1>Smartphoneshop</h1>
                            <div style="display: flex;">
                                <h2 class="check" style="font-weight: 100;">Mua sắm thông minh tiết kiệm thời gian cùng
                                </h2>
                                <h2 style="margin-left: 5px; font-size: 56px;" class="my-element"> Smartphoneshop</h2>
                            </div>
                        </div>
                        <a class="BannerTheme_sliderItem__0Yheb BannerTheme_fadeIn__f2GRS" href="/products"
                            target="_blank" rel="dofollow" draggable="false">
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
                        <div class="container my-4">
                            <h2 class="section-heading check text-center mb-4">Một số sản phẩm</h2>
                            <div class="row">
                                <c:if test="${not empty products}">
                                    <c:forEach var="product" items="${products}">
                                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                                            <div class="card">
                                                <img src="/images/product/${product.image}"
                                                    class="card-img-top img-fluid" alt="Xiaomi Redmi Note 14">
                                                <div class="card-body">
                                                    <a href="/product/${product.id}"
                                                        style="text-decoration: none; color: black;">
                                                        <h4 class="card-title"
                                                            style="font-size: 15px; text-align: center;">
                                                            ${product.name}
                                                        </h4>
                                                    </a>

                                                    <p class="text-muted" style="font-size: 13px;text-align: center;">
                                                        ${product.shortDesc}
                                                    </p>
                                                    <div class="d-flex flex-lg-wrap justify-content-center">
                                                        <p class="text-primary fw-bold mb-3"
                                                            style="font-size: 15px;text-align: center; width: 100%;">
                                                            <fmt:formatNumber type="number" value="${product.price}" />
                                                            ₫
                                                        </p>

                                                        <form action="/add-product-to-cart/${product.id}" method="post">
                                                            <input type="hidden" name="fromPage" value="/" />
                                                            <input type="hidden" name="${_csrf.parameterName}"
                                                                value="${_csrf.token}" />

                                                            <button
                                                                class="mx-auto btn border border-secondary rounded-pill px-3 "
                                                                style="color: gray;">
                                                                <i class="fa fa-shopping-bag me-2 "></i>
                                                                Add to cart
                                                            </button>
                                                        </form>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${empty products}">
                                    <p>Không có sản phẩm nào.</p>
                                </c:if>
                            </div>
                        </div>

                        <!-- About -->
                        <!-- <section class="page-section" id="about">
                            <div class="container">
                                <div class="row align-items-center">
                                    <div class="col-lg-6 text-center text-lg-start">
                                        <h1 class="section-heading check text-center">Về chúng tôi</h1>
                                        <p>Được thành lập vào tháng 8 năm 2004 bởi ông Nguyễn Thế Bình và các cộng
                                            sự, Công
                                            ty
                                            Cổ phần
                                            Smartphone Shop bước đầu gia nhập thị trường với mô hình kinh doanh đầy táo
                                            bạo: Kết
                                            hợp thương
                                            mại
                                            điện tử và hệ thống cửa hàng bán lẻ</p>
                                        <br>

                                        <p>Trong bối cảnh điện thoại di động khi ấy còn là mặt hàng xa xỉ của giới nhà
                                            giàu
                                            và
                                            thị
                                            trường
                                            điện thoại chính hãng còn chưa nở rộ như hiện nay, sự xuất hiện của Thế giới
                                            di
                                            động
                                            nhanh
                                            chóng
                                            gây được tiếng vang lớn trong cộng đồng người tiêu dùng Việt Nam</p>
                                        <br>
                                        <div class="d-flex justify-content-center justify-content-lg-start">
                                            <a href="/test1">
                                                <button class="btn btn-dark me-2">Tìm hiểu thêm</button>
                                            </a>
                                            <a href="/products"><button class="btn btn-light">Mua sắm ngay</button></a>

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <img src="https://www.apple.com.cn/newsroom/images/environments/stores/standard/Apple_Changsha_NewStore_09012021_Full-Bleed-Image.jpg"
                                            class="img-fluid rounded" alt="About Us">
                                    </div>
                                </div>
                            </div>
                        </section> -->
                    </div>


                    <!-- Footer -->

                    <jsp:include page="layout/footer.jsp" />


                    <!-- Bootstrap core JS -->
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                    <!-- Core theme JS -->
                    <script src="/client/js/homepage.js"></script>
                </body>

                </html>