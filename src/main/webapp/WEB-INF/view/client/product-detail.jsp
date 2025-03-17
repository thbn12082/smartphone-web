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

                    .product-container {

                        display: flex;
                        width: 900px;
                        /* Tăng kích thước container */
                        background-color: #fff;
                        padding: 30px;
                        /* Tăng padding */
                        border-radius: 10px;
                        /* Tăng border-radius */
                        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
                        /* font-family: sans-serif;
                        margin: 0;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        min-height: 100vh;
                        background-color: #f4f4f4; */
                    }

                    .product-image {
                        flex: 1;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                    }

                    .product-image img {
                        max-width: 100%;
                        height: auto;
                    }

                    .product-details {
                        flex: 1;
                        padding-left: 30px;
                        width: 450px;
                    }

                    .product-title {
                        font-size: 28px;
                        margin-bottom: 15px;
                    }

                    .product-info {
                        display: flex;
                        justify-content: space-between;
                        margin-bottom: 20px;
                        color: #888;
                    }

                    .price-container {
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                        margin-bottom: 25px;
                    }

                    .price-left,
                    .price-right {
                        text-align: left;
                    }

                    .current-price {
                        font-size: 24px;
                        color: #e91e63;
                        font-weight: bold;
                    }

                    .old-price {
                        font-size: 16px;
                        text-decoration: line-through;
                        color: #888;
                    }

                    .bonus-points {
                        font-size: 16px;
                        color: #ff9800;
                    }

                    .installment {
                        font-size: 18px;
                        color: #333;
                    }

                    .installment-price {
                        font-size: 20px;
                        font-weight: bold;
                    }

                    .or {
                        font-size: 16px;
                        color: #888;
                    }

                    .promotion-container {
                        margin-bottom: 25px;
                    }

                    .choose-promotion {
                        font-size: 18px;
                        margin-bottom: 12px;
                    }

                    .promotion-item {
                        border: 1px solid #ddd;
                        border-radius: 8px;
                        padding: 15px;
                        margin-bottom: 12px;
                    }

                    .promotion-header {
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                        margin-bottom: 8px;
                    }

                    .promotion-icon {
                        color: #ffc107;
                    }

                    .countdown {
                        display: flex;
                    }

                    .time {
                        margin-left: 8px;
                        font-weight: bold;
                    }

                    .promotion-price {
                        font-size: 16px;
                        color: #e91e63;
                    }

                    .sold-out {
                        font-size: 14px;
                        color: #888;
                    }

                    .promotion-list {
                        list-style: none;
                        padding: 0;
                        margin: 0;
                    }

                    .promotion-list li {
                        font-size: 14px;
                        margin-bottom: 5px;
                    }

                    .color-options {
                        margin-top: 25px;
                    }

                    .color-list {
                        display: flex;
                        justify-content: space-between;
                    }

                    .color-item {
                        background-color: #f0f0f0;
                        padding: 10px 15px;
                        border-radius: 8px;
                        cursor: pointer;
                        font-size: 14px;
                        color: #333;
                    }

                    .color-item.blue {
                        background-color: #e6f7ff;
                    }

                    .color-item.green {
                        background-color: #e8f5e9;
                    }

                    .color-item.pink {
                        background-color: #fff0f6;
                    }

                    .color-item.white {
                        border: 1px solid #ddd;
                    }

                    .color-item.black {
                        background-color: #f5f5f5;
                    }

                    .add-to-cart {
                        background-color: #333;
                        color: #fff;
                        padding: 15px 25px;
                        border: none;
                        border-radius: 8px;
                    }
                </style>
            </head>

            <body id="page-top">
                <!-- Navigation -->
                <jsp:include page="layout/header.jsp" />
                <div class="product-container container" style="margin-top: 15vh;">
                    <div class="product-image" style="display: flex;flex-direction: column;">
                        <img src="https://n11scdn.akamaized.net/a1/375_535/04/38/54/01/IMG-3759521437385414794.jpg"
                            alt="iPhone 16 Plus 128GB">
                        <div class="color-options">
                            <div class="color-list">
                                <div class="color-item blue" style="margin-right: 5px;">Blue</div>
                                <div class="color-item green" style="margin-right: 5px;">Green</div>
                                <div class="color-item pink" style="margin-right: 5px;">Pink</div>
                                <div class="color-item white" style="margin-right: 5px;">White</div>
                                <div class="color-item black" style="margin-right: 5px;">Black</div>
                            </div>

                        </div>
                    </div>
                    <div class="product-details">
                        <h1 class="product-title">iPhone 16 Plus 128GB</h1>

                        <div class="price-container">
                            <div class="price-left">
                                <p class="buy-now">Mua ngay với giá</p>
                                <p class="current-price">25.090.000 ₫</p>
                                <p class="old-price">25.990.000₫ 3%</p>

                            </div>

                        </div>
                        <div class="promotion-container">
                            <p class="choose-promotion">Chọn 1 trong các khuyến mãi sau:</p>
                            <div class="promotion-item">
                                <div class="promotion-header" style="display: flex;">
                                    <span class="promotion-title">Giá online siêu rẻ</span>
                                    <span class="promotion-icon">⚡</span>


                                </div>
                                <p class="promotion-price">25.090.000 ₫ -3%</p>
                            </div>
                            <div class="promotion-item">
                                <p class="promotion-title">Khuyến mãi nổi bật</p>
                                <ul class="promotion-list">
                                    <li>Giảm ngay 300,000₫</li>

                                </ul>
                            </div>
                        </div>
                        <a href="/test6" style="text-decoration: none;">
                            <button class="add-to-cart" style="margin-top: 12%;width: 100%;">Add to
                                cart</button>
                        </a>

                    </div>
                </div>


                <div class="container text-center" style="margin-top: 3vh;">

                    <h1 class="check" style="font-weight: 100; font-size: 85px">Thông tin sản phẩm</h1>
                    <div style="display: flex;">

                        <div style="font-size: 20px; text-align: left;">
                            <p>Không chỉ đột phá về công nghệ, iPhone 16 Pro Max còn mang đến làn gió mới với bảng màu
                                sắc ấn
                                tượng, cho phép người dùng tự do thể hiện phong cách cá nhân.
                                Bên cạnh bộ ba gam màu quen thuộc: Titan đen, Titan trắng, Titan tự nhiên, iPhone 16 Pro
                                Max còn
                                giới thiệu phiên bản màu sắc hoàn toàn mới - Titan Sa Mạc. Lấy cảm hứng từ vẻ đẹp hoang
                                sơ, đầy
                                mê hoặc của sa mạc, Titan Sa Mạc hứa hẹn sẽ là lựa chọn hàng đầu cho những ai yêu thích
                                sự độc
                                đáo và khác biệt.
                            </p>

                            <p>Màn hình iPhone 16 Pro Max tăng thêm 0.2 inch so với thế hệ trước, nâng tổng kích thước
                                lên 6.9
                                inch, chính thức trở thành chiếc iPhone lớn nhất mà hãng từng sản xuất. Dù vẫn giữ
                                nguyên thiết
                                kế tổng thể, iPhone 16 Pro Max vẫn mang đến sự đột phá với viền màn hình siêu mỏng -
                                mỏng nhất
                                từ trước đến nay - hứa hẹn mang đến trải nghiệm thị giác ấn tượng.</p>


                            <p>
                                Bên cạnh đó, Apple cũng thay đổi chi tiết nhỏ ở cụm camera, với phần viền ống kính đồng
                                màu với
                                mặt lưng, tạo nên tổng thể hài hòa và sang trọng. Đặc biệt, iPhone 16 Pro Max sở hữu mặt
                                lưng
                                kính nhám kết hợp cùng khung viền titan siêu bền, mang đến vẻ ngoài sang trọng, chống
                                trầy xước
                                tốt hơn và cảm giác cầm nắm chắc chắn, thoải mái.
                            </p>
                        </div>
                        <div>
                            <img src="https://n11scdn.akamaized.net/a1/375_535/04/38/54/01/IMG-3759521437385414794.jpg"
                                alt="iPhone 16 Plus 128GB">
                        </div>
                    </div>



                </div>


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