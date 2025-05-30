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

                        .category-sidebar {
                            padding: 20px;
                            background-color: #f8f9fa;
                            border-radius: 8px;
                            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                            margin-bottom: 20px;
                            /* Thêm margin phía dưới nếu cần */
                        }

                        .category-sidebar-heading {
                            font-size: 24px;
                            font-weight: bold;
                            margin-bottom: 15px;
                            color: #333;
                            text-align: left;
                            /* Căn trái tiêu đề */
                        }

                        .category-sidebar-list {
                            list-style: none;
                            padding: 0;
                            margin: 0;
                        }

                        .category-sidebar-item {
                            margin-bottom: 10px;
                            padding-left: 15px;
                            text-align: left;
                            /* Căn trái mục danh mục */
                        }

                        .category-sidebar-item a {
                            text-decoration: none;
                            color: #555;
                            display: flex;
                            justify-content: space-between;
                            /* Để tên và số lượng ở hai bên */
                            align-items: center;
                        }

                        .category-sidebar-item a:hover {
                            color: #007bff;
                        }

                        .category-count {
                            color: #777;
                            font-size: 0.9em;
                            margin-left: 10px;
                        }
                    </style>
                </head>

                <body id="page-top">
                    <jsp:include page="layout/header.jsp" />

                    <div class="container" style="margin-top: 10vh;">
                        <div class="row">
                            <!-- <div class="col-md-3">
                                <div class="category-sidebar">
                                    <h3 class="category-sidebar-heading">Categories</h3>
                                    <ul class="category-sidebar-list">
                                        <c:if test="${not empty categories}">
                                            <c:forEach var="category" items="${categories}">
                                                <li class="category-sidebar-item">
                                                    <a href="/products?categoryId=${category.categoryId}">
                                                        ${category.categoryName}
                                                        <span class="category-count">(${category.productCount})</span>
                                                    </a>
                                                </li>
                                            </c:forEach>
                                        </c:if>
                                        <c:if test="${empty categories}">
                                            <li class="category-sidebar-item">Không có danh mục nào.</li>
                                        </c:if>
                                    </ul>
                                </div>
                            </div> -->

                            <!-- <div class="col-md-9"> -->
                            <div class="container-fluid" style="margin-top: 10vh;">
                                <div class="row" style="display: flex;justify-content: space-between;">
                                    <div class="col-md-8">
                                        <div class="product-container">
                                            <div class="product-image" style="display: flex;flex-direction: column;">
                                                <img src="/images/product/${product.image}">
                                                <div class="color-options">
                                                    <div class="color-list">
                                                        <div class="color-item blue" style="margin-right: 5px;">Blue
                                                        </div>
                                                        <div class="color-item green" style="margin-right: 5px;">Green
                                                        </div>
                                                        <div class="color-item pink" style="margin-right: 5px;">Pink
                                                        </div>
                                                        <div class="color-item white" style="margin-right: 5px;">White
                                                        </div>
                                                        <div class="color-item black" style="margin-right: 5px;">Black
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <h1 class="product-title">${product.name}</h1>
                                                <p style="font-size: 18px;">${product.shortDesc}</p>
                                                <p>${product.factory}</p>
                                                <div class="promotion-container">
                                                    <div class="promotion-item">
                                                        <div class="promotion-header" style="display: flex;">
                                                            <span class="promotion-title"
                                                                style="color: brown; text-align: center;">Giá
                                                                online siêu rẻ</span>
                                                            <span class="promotion-icon">⚡</span>
                                                        </div>
                                                        <div class=" price-container">
                                                            <div class="price-left">
                                                                <p class="buy-now">Mua ngay với giá</p>
                                                                <p class=" fw-bold mb-3 mx-auto"
                                                                    style="font-size: 30px;text-align: center; width: 100%; color: red;">
                                                                    <fmt:formatNumber type="number"
                                                                        value="${product.price}" />
                                                                    ₫
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <form action="/add-product-to-cart/${product.id}" method="post">
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
                            </div>



                            <div class="container text-center" style="margin-top: 3vh;">
                                <h1 class="check" style="font-weight: 100; font-size: 85px">Thông tin sản phẩm</h1>
                                <div style="display: flex;">
                                    <div style="font-size: 20px; text-align: left;width: 50%;word-wrap: break-word;">
                                        ${product.detailDesc}
                                    </div>
                                    <div style="width: 50%;" class="my-auto">
                                        <img src="/images/product/${product.image}">
                                    </div>
                                </div>
                            </div>

                            <div class="container">
                                <h1 class="check mb-4">Sản phẩm liên quan</h1>
                                <div class="row">
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


                                </div>
                            </div>
                        </div>
                    </div>
                    </div>



                    <jsp:include page="layout/footer.jsp" />

                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                    <script src="/client/js/homepage.js"></script>
                </body>

                </html>