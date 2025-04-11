<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

                    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
                        rel="stylesheet" />
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
                        crossorigin="anonymous"></script>
                    <!-- CSS Files -->
                    <link href="/css/dashboard.css" rel="stylesheet" />
                    <style>
                        .satisfaction-stats {
                            width: 300px;
                            margin: 50px auto;
                            text-align: center;
                            font-family: sans-serif;
                        }

                        .stats {
                            display: flex;
                            justify-content: space-around;
                            margin-bottom: 20px;
                        }

                        .satisfied,
                        .dissatisfied {
                            padding: 20px;
                            border-radius: 5px;
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
                            font-size: 2em;
                            font-weight: bold;
                            display: block;
                        }
                    </style>
                </head>

                <body class="sb-nav-fixed">

                    <div id="layoutSidenav">
                        <jsp:include page="../layout/sidebar.jsp" />
                        <div id="layoutSidenav_content">
                            <main>
                                <div class="container-fluid px-4">

                                    <div class="mt-5">
                                        <div class="row">
                                            <div class="col-12 mx-auto">
                                                <div class="d-flex justify-content-between">
                                                    <h3>Order detail with id = ${id}</h3>
                                                </div>

                                                <hr />

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
                                                            <c:if test="${ empty orderDetails}">
                                                                <tr>
                                                                    <td colspan="6">
                                                                        Không có sản phẩm trong giỏ hàng
                                                                    </td>
                                                                </tr>
                                                            </c:if>
                                                            <c:forEach var="orderDetail" items="${orderDetails}">

                                                                <tr>
                                                                    <th scope="row">
                                                                        <div class="d-flex align-items-center">
                                                                            <img src="/images/product/${orderDetail.product.image}"
                                                                                class="img-fluid me-5 rounded-circle"
                                                                                style="width: 80px; height: 80px;"
                                                                                alt="">
                                                                        </div>
                                                                    </th>
                                                                    <td>
                                                                        <p class="mb-0 mt-4">
                                                                            <a href="/product/${orderDetail.product.id}"
                                                                                target="_blank">
                                                                                ${orderDetail.product.name}
                                                                            </a>
                                                                        </p>
                                                                    </td>
                                                                    <td>
                                                                        <p class="mb-0 mt-4">
                                                                            <fmt:formatNumber type="number"
                                                                                value="${orderDetail.price}" /> đ
                                                                        </p>
                                                                    </td>
                                                                    <td>
                                                                        <div class="input-group quantity mt-4"
                                                                            style="width: 100px;">
                                                                            <input type="text"
                                                                                class="form-control form-control-sm text-center border-0"
                                                                                value="${orderDetail.quantity}">
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <p class="mb-0 mt-4"
                                                                            data-cart-detail-id="${orderDetail.id}">
                                                                            <fmt:formatNumber type="number"
                                                                                value="${orderDetail.price * orderDetail.quantity}" />
                                                                            đ
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>

                                                        </tbody>
                                                    </table>
                                                </div>
                                                <a href="/admin/order" class="btn btn-success mt-3">Back</a>

                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </main>

                        </div>
                    </div>


                </body>

                </html>