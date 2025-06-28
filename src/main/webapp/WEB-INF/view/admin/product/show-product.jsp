<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <!-- Font Awesome Icons -->
                <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
                <!-- CSS Files -->
                <link href="/css/dashboard.css" rel="stylesheet" />
            </head>

            <body>

                <jsp:include page="../layout/sidebar.jsp" />

                <main>
                    <div class="container" style="margin-top: 100px;">
                        <div class="row justify-content-center">
                            <div class="col-lg-10">
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <h2 class="fw-bold text-light mb-0">Quản lý sản phẩm</h2>
                                    <button type="button" class="btn btn-primary shadow"
                                        onclick="window.location.href='/admin/product/create'">
                                        <i class="bi bi-plus-circle me-1"></i> Thêm sản phẩm
                                    </button>
                                </div>
                               <!-- tìm sản phẩm theo tên -->
                                <form method="get" action="/admin/product">
                                    <div style="display: flex;">
                                        <div>
                                            <input type="text" name="keyword" placeholder="Tìm kiếm sản phẩm..."
                                                value="${keyword}" class="form-control border-0"
                                                style="background:#23272b; color:#fff;">
                                        </div>

                                        <div>
                                            <button type="submit" class="btn btn-primary px-4">
                                                <i class="bi bi-search"></i> Tìm kiếm
                                            </button>
                                        </div>

                                    </div>
                                </form>
                                <div class="card shadow-lg border-0">
                                    <div class="card-body p-0">
                                        <table class="table table-hover align-middle mb-0">
                                            <thead class="table-dark">
                                                <tr>
                                                    <th scope="col" class="text-center">ID</th>
                                                    <th scope="col" class="text-center">Tên sản phẩm</th>
                                                    <th scope="col" class="text-center">Giá</th>
                                                    <th scope="col" class="text-center">Hãng</th>
                                                    <th scope="col" class="text-center">Thao tác</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="product" items="${products}">
                                                    <tr>
                                                        <th scope="row" class="text-center">${product.id}</th>
                                                        <td class="text-center">${product.name}</td>
                                                        <td class="text-center">
                                                            <fmt:formatNumber value="${product.price}" type="currency"
                                                                currencySymbol="₫" />
                                                        </td>
                                                        <td class="text-center">${product.factory}</td>
                                                        <td class="text-center">
                                                            <a href="/admin/product/${product.id}"
                                                                class="btn btn-success btn-sm me-1"
                                                                title="Xem chi tiết">
                                                                <i class="bi bi-eye"></i>
                                                            </a>
                                                            <a href="/admin/product/update/${product.id}"
                                                                class="btn btn-warning btn-sm me-1" title="Chỉnh sửa">
                                                                <i class="bi bi-pencil-square"></i>
                                                            </a>
                                                            <button type="button" class="btn btn-danger btn-sm"
                                                                title="Xóa"
                                                                onclick="if(confirm('Bạn chắc chắn muốn xóa sản phẩm này?')) window.location.href='/admin/product/delete/${product.id}'">
                                                                <i class="bi bi-trash"></i>
                                                            </button>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- Pagination -->
                                <nav aria-label="Page navigation" class="mt-4">
                                    <ul class="pagination justify-content-center">
                                        <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                            <a class="page-link"
                                                href="/admin/product?page=${currentPage - 1}${not empty keyword ? '&keyword=' + keyword : ''}"
                                                aria-label="Previous" ${currentPage==1
                                                ? 'tabindex="-1" aria-disabled="true"' : '' }>
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                        <c:if test="${totalPages > 0}">
                                            <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                                                <li class="page-item ${loop.index == currentPage ? 'active' : ''}">
                                                    <a class="page-link"
                                                        href="/admin/product?page=${loop.index}${not empty keyword ? '&keyword=' + keyword : ''}">
                                                        ${loop.index}
                                                    </a>
                                                </li>
                                            </c:forEach>
                                        </c:if>
                                        <li class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
                                            <a class="page-link"
                                                href="/admin/product?page=${currentPage + 1}${not empty keyword ? '&keyword=' + keyword : ''}"
                                                aria-label="Next" ${currentPage==totalPages
                                                ? 'tabindex="-1" aria-disabled="true"' : '' }>
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </main>

                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                <script>
                    $(document).ready(function () {
                        "use strict";


                        $('.quantity button').on('click', function () {
                            let change = 0;
                            var button = $(this);
                            var oldValue = button.parent().parent().find('input').val();
                            if (button.hasClass('btn-plus')) {
                                var newVal = parseFloat(oldValue) + 1;
                                change = 1;
                            } else {
                                if (oldValue > 1) {
                                    var newVal = parseFloat(oldValue) - 1;
                                    change = -1;
                                } else {
                                    newVal = 1;
                                }
                            }
                            const input = button.parent().parent().find('input');
                            input.val(newVal);

                            const index = input.attr("data-cart-detail-index")
                            const el = document.getElementById(`cartDetails${index}.quantity`);
                            $(el).val(newVal);

                            const price = input.attr("data-cart-detail-price");
                            const id = input.attr("data-cart-detail-id");

                            const priceElement = $(`p[data-cart-detail-id='${id}']`);
                            if (priceElement) {
                                const newPrice = +price * newVal;
                                priceElement.text(formatCurrency(newPrice.toFixed(2)) + " đ");
                            }

                            const totalPriceElement = $(`p[data-cart-total-price]`);
                            if (totalPriceElement && totalPriceElement.length) {
                                const currentTotal = totalPriceElement.first().attr("data-cart-total-price");
                                let newTotal = +currentTotal;
                                if (change === 0) {
                                    newTotal = +currentTotal;
                                } else {
                                    newTotal = change * (+price) + (+currentTotal);
                                }
                                change = 0;
                                totalPriceElement?.each(function (index, element) {
                                    $(totalPriceElement[index]).text(formatCurrency(newTotal.toFixed(2)) + " đ");
                                    $(totalPriceElement[index]).attr("data-cart-total-price", newTotal);
                                });
                            }
                        });

                        function formatCurrency(value) {
                            const formatter = new Intl.NumberFormat('vi-VN', {
                                style: 'decimal',
                                minimumFractionDigits: 0,
                            });
                            let formatted = formatter.format(value);
                            formatted = formatted.replace(/\./g, ',');
                            return formatted;
                        }


                    });
                </script>

                <style>
                    body {
                        background: linear-gradient(135deg, #232526 0%, #414345 100%);
                        min-height: 100vh;
                        font-family: 'Open Sans', sans-serif;
                    }

                    .card {
                        background: #23272b;
                        border-radius: 18px;
                        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.15);
                        border: none;
                    }

                    .table {
                        color: #fff;
                        background: transparent;
                    }

                    .table thead th {
                        border: none;
                        font-size: 1.08rem;
                        letter-spacing: 0.04em;
                        background: #18191a !important;
                        color: #f8f9fa;
                        text-transform: uppercase;
                    }

                    .table tbody tr {
                        transition: background 0.2s;
                        border-bottom: 1px solid #343a40;
                    }

                    .table tbody tr:hover {
                        background: #2d3238;
                    }

                    /* Style cải tiến cho các nút */
                    .btn {
                        display: inline-block;
                        padding: 0.5rem 1rem;
                        font-size: 1rem;
                        font-weight: 500;
                        color: #fff;
                        text-align: center;
                        text-decoration: none;
                        background-color: #6c757d;
                        border: none;
                        border-radius: 8px;
                        transition: background 0.2s ease, transform 0.2s ease, box-shadow 0.2s ease;
                        cursor: pointer;
                    }

                    .btn:hover,
                    .btn:focus {
                        transform: scale(1.03);
                        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
                    }

                    .btn-success {
                        background-color: #198754;
                    }

                    .btn-warning {
                        background-color: #ffc107;
                        color: #23272b;
                        /* đảm bảo độ tương phản tốt */
                    }

                    .btn-danger {
                        background-color: #dc3545;
                    }

                    .btn-primary {
                        background-color: #0d6efd;
                    }

                    .btn.shadow {
                        box-shadow: 0 2px 8px rgba(13, 110, 253, 0.15) !important;
                        font-weight: 600;
                        letter-spacing: 0.02em;
                    }

                    .pagination .page-link {
                        color: #343a40;
                        border-radius: 8px !important;
                        margin: 0 2px;
                        background: #fff;
                        border: none;
                        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.07);
                        transition: background 0.2s, color 0.2s;
                    }

                    .pagination .active .page-link {
                        background: #0d6efd;
                        color: #fff;
                        border: none;
                        font-weight: bold;
                    }

                    .pagination .page-link:hover {
                        background: #e9ecef;
                        color: #0d6efd;
                    }

                    .input-group-lg>.form-control,
                    .input-group-lg>.input-group-text,
                    .input-group-lg>.btn {
                        font-size: 1.15rem;
                        border-radius: 12px;
                    }

                    .input-group .form-control:focus {
                        background: #23272b;
                        color: #fff;
                        border-color: #0d6efd;
                        box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, .25);
                    }

                    .container,
                    main {
                        margin-left: 150px;
                        transition: margin-left 0.3s;
                    }

                    @media (max-width: 991px) {

                        .container,
                        main {
                            margin-left: 0;
                        }
                    }

                    h2.fw-bold {
                        letter-spacing: 0.04em;
                        color: #fff;
                        text-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
                    }

                    .btn-primary.shadow {
                        box-shadow: 0 2px 8px rgba(13, 110, 253, 0.15) !important;
                        font-weight: 600;
                        letter-spacing: 0.02em;
                    }
                </style>
            </body>

            </html>