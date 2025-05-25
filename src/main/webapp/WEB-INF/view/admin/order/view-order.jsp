<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">


                <head>
                    <meta charset="utf-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <title>
                        TheBinh - Order Detail
                    </title>
                    <link rel="stylesheet"
                        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
                    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
                    <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-icons.css"
                        rel="stylesheet" />
                    <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-svg.css"
                        rel="stylesheet" />
                    <link href="/css/dashboard.css" rel="stylesheet" />
                    <style>
                        body {
                            background: #000;
                            /* Đổi nền thành màu đen */
                            font-family: 'Open Sans', sans-serif;
                            color: #f8f9fa;
                            margin: 0;
                            padding: 0;
                            margin-left: 270px;
                        }

                        .order-container {
                            max-width: 1200px;
                            margin: 60px auto 0 auto;
                            padding: 24px;
                        }

                        h3.order-title {
                            text-align: center;
                            color: #ffdd57;
                            margin-bottom: 32px;
                            font-size: 2.2rem;
                            letter-spacing: 1px;
                            font-weight: 700;
                        }

                        .order-table {
                            background: #23233a;
                            border-radius: 12px;
                            overflow: hidden;
                            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.25);
                            border: 1.5px solid #39395a;
                        }

                        .order-table th,
                        .order-table td {
                            vertical-align: middle;
                            text-align: center;
                            padding: 18px 12px;
                            border: 1px solid #39395a;
                        }

                        .order-table th {
                            background-color: #23233a;
                            color: #ffdd57;
                            font-weight: bold;
                            font-size: 1.08rem;
                            border-bottom: 2.5px solid #ffdd57;
                        }

                        .order-table tbody tr:hover {
                            background-color: #2e2e4d;
                            transition: background 0.2s;
                        }

                        .square-img {
                            width: 80px;
                            height: 80px;
                            object-fit: cover;
                            border: 2.5px solid #ffdd57;
                            border-radius: 10px;
                            display: block;
                            margin: 0 auto;
                            background: #232526;
                            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.12);
                        }

                        .btn-success {
                            display: inline-block;
                            background-color: #198754;
                            border: none;
                            padding: 13px 38px;
                            border-radius: 8px;
                            color: #fff;
                            text-decoration: none;
                            transition: transform 0.2s, background-color 0.2s;
                            font-size: 1.08rem;
                            margin-top: 36px;
                            font-weight: 600;
                            letter-spacing: 1px;
                        }

                        .btn-success:hover,
                        .btn-success:focus {
                            background-color: #157347;
                            transform: scale(1.06);
                        }

                        @media (max-width: 900px) {
                            .order-container {
                                padding: 8px;
                            }

                            body {
                                margin-left: 0;
                            }
                        }

                        @media (max-width: 600px) {

                            .order-table th,
                            .order-table td {
                                padding: 10px 4px;
                                font-size: 0.95rem;
                            }

                            .square-img {
                                width: 56px;
                                height: 56px;
                            }

                            h3.order-title {
                                font-size: 1.2rem;
                            }
                        }
                    </style>
                </head>


                <body>

                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="order-container">
                                <h3 class="order-title">Order Detail</h3>
                                <div class="table-responsive order-table">
                                    <table class="table table-bordered table-hover mb-0">
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
                                            <c:if test="${ empty orderDetails }">
                                                <tr>
                                                    <td colspan="5">Không có sản phẩm trong giỏ hàng</td>
                                                </tr>
                                            </c:if>
                                            <c:forEach var="orderDetail" items="${orderDetails}">
                                                <tr>
                                                    <td>
                                                        <img src="/images/product/${orderDetail.product.image}"
                                                            class="square-img" alt="">
                                                    </td>
                                                    <td>
                                                        <a href="/product/${orderDetail.product.id}" target="_blank"
                                                            style="color: #f8f9fa; text-decoration: none; font-weight: 500;">
                                                            ${orderDetail.product.name}
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <fmt:formatNumber type="number" value="${orderDetail.price}" />
                                                        đ
                                                    </td>
                                                    <td>
                                                        ${orderDetail.quantity}
                                                    </td>
                                                    <td>
                                                        <fmt:formatNumber type="number"
                                                            value="${orderDetail.price * orderDetail.quantity}" /> đ
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <div style="text-align: center;">
                                    <a href="/admin/order" class="btn-success">Back</a>
                                </div>
                            </div>
                        </main>
                    </div>
                </body>

                </html>