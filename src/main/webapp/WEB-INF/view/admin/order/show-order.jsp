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

                <link href="/css/dashboard.css" rel="stylesheet" />
            </head>

            <body>
              
                <jsp:include page="../layout/sidebar.jsp" />
                <main>
                    <div class="container" style="margin-top: 100px;">
                        <div class="row justify-content-center">
                            <div class="col-lg-10">
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <h2 class="fw-bold text-light mb-0">Manage Orders</h2>
                                </div>
                                <div class="card shadow-lg border-0">
                                    <div class="card-body p-0">
                                        <table class="table table-hover align-middle mb-0">
                                            <thead class="table-dark">
                                                <tr>
                                                    <th class="text-center">ID</th>
                                                    <th class="text-center">Total Price</th>
                                                    <th class="text-center">User</th>
                                                    <th class="text-center">Status</th>
                                                    <th class="text-center">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="order" items="${orders}">
                                                    <tr>
                                                        <th class="text-center">${order.id}</th>
                                                        <td class="text-center">
                                                            <fmt:formatNumber type="currency"
                                                                value="${order.totalPrice}" currencySymbol="₫" />
                                                        </td>
                                                        <td class="text-center">${order.user.fullName}</td>
                                                        <td class="text-center">${order.status}</td>
                                                        <td class="text-center">
                                                            <a href="/admin/order/${order.id}"
                                                                class="btn btn-success btn-sm me-1" title="View">
                                                                <i class="bi bi-eye"></i>
                                                            </a>
                                                            <a href="/admin/order/update/${order.id}"
                                                                class="btn btn-warning btn-sm me-1" title="Update">
                                                                <i class="bi bi-pencil-square"></i>
                                                            </a>
                                                            <a href="/admin/order/delete/${order.id}"
                                                                class="btn btn-danger btn-sm" title="Delete"
                                                                onclick="return confirm('Are you sure you want to delete this order?');">
                                                                <i class="bi bi-trash"></i>
                                                            </a>
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
                                            <a class="page-link" href="/admin/order?page=${currentPage - 1}"
                                                aria-label="Previous" ${currentPage==1
                                                ? 'tabindex="-1" aria-disabled="true"' : '' }>
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                        <c:if test="${totalPages > 0}">
                                            <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                                                <li class="page-item ${loop.index == currentPage ? 'active' : ''}">
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
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </main>

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

                    .btn {
                        min-width: 36px;
                        border-radius: 8px;
                        font-size: 1rem;
                        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
                        transition: background 0.2s, color 0.2s;
                    }

                    .btn-success {
                        background: #198754;
                        border: none;
                    }

                    .btn-warning {
                        background: #ffc107;
                        border: none;
                        color: #23272b;
                    }

                    .btn-danger {
                        background: #dc3545;
                        border: none;
                    }

                    .btn:hover,
                    .btn:focus {
                        opacity: 0.9;
                        color: #fff;
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
                </style>
                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
            </body>

            </html>