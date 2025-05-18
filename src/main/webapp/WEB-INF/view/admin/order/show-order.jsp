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

                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
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

            <body class="g-sidenav-show   bg-gray-100">
                <div class="min-height-300 bg-dark position-absolute w-100"></div>
                <jsp:include page="../layout/sidebar.jsp" />
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">

                            <div class="mt-5">
                                <div class="row">
                                    <div class="col-12 mx-auto">
                                        <div class="d-flex">
                                            <h3 style="color: antiquewhite; margin-top: 50px; justify-content: center;">
                                                Table Orders</h3>
                                        </div>

                                        <hr />
                                        <table class=" table table-bordered table-hover" style="margin-top: 150px;">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Total Price</th>
                                                    <th>User</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="order" items="${orders}">
                                                    <tr>
                                                        <th>${order.id}</th>
                                                        <td>
                                                            <fmt:formatNumber type="number"
                                                                value="${order.totalPrice}" /> đ
                                                        </td>
                                                        <td>${order.user.fullName}</td>
                                                        <td>${order.status}</td>
                                                        <td>
                                                            <a href="/admin/order/${order.id}"
                                                                class="btn btn-success">View</a>
                                                            <a href="/admin/order/update/${order.id}"
                                                                class="btn btn-warning  mx-2">Update</a>
                                                            <a href="/admin/order/delete/${order.id}"
                                                                class="btn btn-danger">Delete</a>
                                                        </td>
                                                    </tr>

                                                </c:forEach>

                                            </tbody>
                                        </table>
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination justify-content-center">

                                                <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                                    <a class="page-link" href="/admin/order?page=${currentPage - 1}"
                                                        aria-label="Previous" ${currentPage==1
                                                        ? 'tabindex="-1" aria-disabled="true"' : '' }>
                                                        <span aria-hidden="true">&laquo;</span>
                                                        <span class="sr-only">Previous</span>
                                                    </a>
                                                </li>


                                                <c:if test="${totalPages > 0}">
                                                    <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                                                        <li
                                                            class="page-item ${loop.index == currentPage ? 'active' : ''}">
                                                            <a class="page-link" href="/admin/order?page=${loop.index}">
                                                                ${loop.index}
                                                            </a>
                                                        </li>
                                                    </c:forEach>
                                                </c:if>


                                                <li class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
                                                    <a class="page-link" href="/admin/order?page=${currentPage + 1}"
                                                        aria-label="Next" ${currentPage==totalPages
                                                        ? 'tabindex="-1" aria-disabled="true"' : '' }>
                                                        <span aria-hidden="true">&raquo;</span>
                                                        <span class="sr-only">Next</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>


                                    </div>

                                </div>

                            </div>
                        </div>
                    </main>

                </div>
                </div>


            </body>

            </html>