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

                <div class="min-height-300 bg-dark position-absolute w-100"></div>
                <jsp:include page="../layout/sidebar.jsp" />


                <main>

                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <div class="inner-header"
                                    style="display: flex; justify-content: space-between;margin-top: 94px;">
                                    <h2 style="color: antiquewhite;">Manage Products</h2>
                                    <button type="button" class="btn btn-primary"
                                        onclick="window.location.href='http://localhost:8080/admin/product/create'">Create
                                        a product</button>
                                </div>
                                <hr>
                            </div>
                            <div class="col-md-3"></div>
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <table class="table table-hover" style="margin-top: 70px;">
                                    <thead>
                                        <tr>
                                            <th scope="col" style="color: antiquewhite;">ID</th>
                                            <th scope="col" style="color: antiquewhite;">Name</th>
                                            <th scope="col" style="color: antiquewhite;">Price</th>
                                            <th scope="col" style="color: antiquewhite;">Factory</th>
                                            <th scope="col" style="color: antiquewhite;padding-left: 104px;">Action</th>
                                        </tr>
                                    </thead>

                                    <!-- noi xuat du lieu -->
                                    <tbody>
                                        <c:forEach var="product" items="${products}">
                                            <tr>
                                                <th scope="row" style="text-align: center;">${product.id}</th>
                                                <td style="text-align: center;">${product.name}</td>
                                                <td style="text-align: center;">
                                                    <fmt:formatNumber value="${product.price}" type="currency"
                                                        currencySymbol="₫" />
                                                </td>
                                                <td style="text-align: center;">${product.factory}</td>
                                                <td>
                                                    <a href="/admin/product/${product.id}"
                                                        class="btn btn-success">View</a>
                                                    <a href="/admin/product/update/${product.id}"
                                                        class="btn btn-warning">Update</a>

                                                    <button type="button" class="btn btn-danger"
                                                        onclick="window.location.href='http://localhost:8080/admin/delete/${product.id}'">Delete</button>
                                                </td>
                                            </tr>
                                        </c:forEach>


                                    </tbody>
                                </table>
                                <!-- Sửa phần pagination -->
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">

                                        <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                            <a class="page-link" href="/admin/product?page=${currentPage - 1}"
                                                aria-label="Previous" ${currentPage==1
                                                ? 'tabindex="-1" aria-disabled="true"' : '' }>
                                                <span aria-hidden="true">&laquo;</span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                        </li>


                                        <c:if test="${totalPages > 0}">
                                            <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                                                <li class="page-item ${loop.index == currentPage ? 'active' : ''}">
                                                    <a class="page-link" href="/admin/product?page=${loop.index}">
                                                        ${loop.index}
                                                    </a>
                                                </li>
                                            </c:forEach>
                                        </c:if>


                                        <li class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
                                            <a class="page-link" href="/admin/product?page=${currentPage + 1}"
                                                aria-label="Next" ${currentPage==totalPages
                                                ? 'tabindex="-1" aria-disabled="true"' : '' }>
                                                <span aria-hidden="true">&raquo;</span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>

                            </div>
                            <div class="col-md-3"></div>
                        </div>


                </main>




                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
                <script src="/js/main.js"></script>
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
            </body>

            </html>