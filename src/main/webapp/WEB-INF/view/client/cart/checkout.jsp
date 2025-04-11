<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                    </style>
                </head>

                <body>

                    <jsp:include page="../layout/header.jsp" />

                    <!-- Cart Page Start -->
                    <div class="container-fluid py-5">
                        <div class="container py-5">
                            <div class="mb-3">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Thông tin thanh toán</li>
                                    </ol>
                                </nav>
                            </div>

                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Sản phẩm</th>
                                            <th scope="col">Tên</th>
                                            <th scope="col">Giá cả</th>
                                            <th scope="col">Số lượng</th>
                                            <th scope="col">Thành tiền</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:if test="${ empty cartDetails}">
                                            <tr>
                                                <td colspan="6">
                                                    Không có sản phẩm trong giỏ hàng
                                                </td>
                                            </tr>
                                        </c:if>
                                        <c:forEach var="cartDetail" items="${cartDetails}">

                                            <tr>
                                                <th scope="row">
                                                    <div class="d-flex align-items-center">
                                                        <img src="/images/product/${cartDetail.product.image}"
                                                            class="img-fluid me-5 rounded-circle"
                                                            style="width: 80px; height: 80px;" alt="">
                                                    </div>
                                                </th>
                                                <td>
                                                    <p class="mb-0 mt-4">
                                                        <a href="/product/${cartDetail.product.id}" target="_blank"
                                                            style="text-decoration: none; color: darkblue;">
                                                            ${cartDetail.product.name}
                                                        </a>
                                                    </p>
                                                </td>
                                                <td>
                                                    <p class="mb-0 mt-4">
                                                        <fmt:formatNumber type="number" value="${cartDetail.price}" /> đ
                                                    </p>
                                                </td>
                                                <td>
                                                    <div class="input-group quantity mt-4" style="width: 100px;">
                                                        <input type="text"
                                                            class="form-control form-control-sm text-center border-0"
                                                            value="${cartDetail.quantity}">
                                                    </div>
                                                </td>
                                                <td>
                                                    <p class="mb-0 mt-4" data-cart-detail-id="${cartDetail.id}">
                                                        <fmt:formatNumber type="number"
                                                            value="${cartDetail.price * cartDetail.quantity}" /> đ
                                                    </p>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                            <c:if test="${not empty cartDetails}">
                                <form:form action="/place-order" method="post" modelAttribute="cart">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <div class="mt-5 row g-4 justify-content-start">
                                        <div class="col-12 col-md-6">
                                            <div class="p-4 ">
                                                <h5>Thông Tin Người Nhận
                                                </h5>
                                                <div class="row">
                                                    <div class="col-12 form-group mb-3">
                                                        <label>Tên người nhận</label>
                                                        <input class="form-control" name="receiverName" required />
                                                    </div>
                                                    <div class="col-12 form-group mb-3">
                                                        <label>Địa chỉ người nhận</label>
                                                        <input class="form-control" name="receiverAddress" required />
                                                    </div>
                                                    <div class="col-12 form-group mb-3">
                                                        <label>Số điện thoại</label>
                                                        <input class="form-control" name="receiverPhone" required />
                                                    </div>
                                                    <div class="mt-4">
                                                        <i class="fas fa-arrow-left"></i>
                                                        <a href="/cart"
                                                            style="color: darkblue; text-decoration: none;">Quay lại giỏ
                                                            hàng</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <div class="bg-light rounded">
                                                <div class="p-4">
                                                    <h1 class="display-6 mb-4">Thông Tin <span class="fw-normal">Thanh
                                                            Toán</span>
                                                    </h1>

                                                    <div class="d-flex justify-content-between">
                                                        <h5 class="mb-0 me-4">Phí vận chuyển</h5>
                                                        <div class="">
                                                            <p class="mb-0">0 đ</p>
                                                        </div>
                                                    </div>
                                                    <div class="mt-3 d-flex justify-content-between">
                                                        <h5 class="mb-0 me-4">Hình thức</h5>
                                                        <div class="">
                                                            <p class="mb-0">Thanh toán khi nhận hàng (COD)</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                    class="py-4 mb-4 border-top border-bottom d-flex justify-content-between">
                                                    <h5 class="mb-0 ps-4 me-4">Tổng số tiền</h5>
                                                    <p class="mb-0 pe-4" data-cart-total-price="${totalPrice}">
                                                        <fmt:formatNumber type="number" value="${totalPrice}" /> đ
                                                    </p>
                                                </div>

                                                <button
                                                    class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4 ms-4">
                                                    <p style="margin-bottom: 0px;color: darkblue;">
                                                        Xác nhận thanh toán
                                                    </p>

                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </form:form>
                            </c:if>

                        </div>
                    </div>
                    <!-- Cart Page End -->


                    <jsp:include page="../layout/footer.jsp" />



                    <!-- JavaScript Libraries -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>


                    <!-- Template Javascript -->
                    <!-- <script src="/client/js/main.js"></script> -->
                </body>

                </html>