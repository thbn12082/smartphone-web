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
                <div class="container" style="margin-bottom: 10px;">

                    <h1 class="check" style="font-weight: 100; margin-top: 15vh;">Sạc dự phòng cho điện thoại</h1>
                    <div class="pic" style="width: 100%; height: 600px; object-fit: cover; display: flex;">
                        <img src="https://ugreen.vn/wp-content/uploads/2024/11/pin-du-phong-ugreen-pb724-12000mah-100w-35526b-2.webp"
                            alt="" style="width: 50%; height: 600px; object-fit: cover;">

                        <img src="https://ugreen.vn/wp-content/uploads/2024/10/top-4-thuong-hieu-pin-sac-du-phong-hang-dau-hien-nay-5.jpg"
                            alt="">
                    </div>
                    <div style="color: #888; font-size: 20px; margin-top: 10px; margin-bottom: 10px;">
                        <p>Sạc dự phòng là phụ kiện quen thuộc, được sản xuất dành cho những người dùng điện thoại, máy
                            tính bảng. Công dụng chính của sản phẩm này là lưu trữ điện năng để cung cấp cho điện
                            thoại, máy tính bảng... ở bất cứ nơi đâu khi mà họ không thể chủ động được về nguồn điện
                            nhằm thực hiện quá trình sạc pin như thông thường.
                            Về cơ bản, sạc dự phòng được thiết kế rất nhỏ gọn, để bạn có thể mang theo dễ dàng tới nhiều
                            nơi.</p>
                        <p>Sạc dự phòng là một món phụ kiện không thể thiếu cho những ai sử dụng điện thoại thông minh
                            thường xuyên. Sạc dự phòng giúp người dùng không gặp phải tình trạng hết pin bất ngờ khi
                            đang di chuyển, công tác hay đi chơi xa. Tuy nhiên, với thị trường đa dạng như hiện nay,
                            việc lựa chọn được một sản phẩm sạc dự phòng tốt không phải là điều dễ dàng.</p>
                        <p>Sạc dự phòng là một thiết bị có khả năng lưu trữ điện năng bằng cách sạc đầy như một chiếc
                            điện thoại di động từ đó có thể sử dụng để sạc các thiết bị điện tử như smart phone, máy
                            tính bảng, máy nghe nhạc.</p>
                        <p>Sạc pin dự phòng là một sản phẩm công nghệ được ưu chuộng hiện nay vì thế sản phẩm ngày càng
                            đa dạng đáp ứng cho nhu cầu sử dụng hằng ngày và được phân làm 3 loại chính bao gồm:
                        <ul>
                            <li>Sạc pin dự phòng thông thường – Loại sạc phổ thông nhất hiện nay được sử dụng cho các
                                dòng điện thoại và máy tính bảng chạy hệ điều hành IOS và Android thường có dung tích từ
                                500
                                đến 50.000 mAh.</li>
                            <li>Sạc pin dư phòng ốp lưng – Loại sạc có thiết kế giống ốp lưng có khả năng vừa sạc vừa
                                bảo vệ
                                an toàn cho thiết bị.</li>
                            <li>Sạc pin dự phòng không dây – Là dòng sản phẩm cao cấp có khả năng sạc không dây và chỉ
                                sử
                                dụng cho các dòng máy cao cấp có hỗ trợ sạc không dây.</p>
                            </li>
                        </ul>



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