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
                                <table class="table table-hover">
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
                                                <td style="text-align: center;">${product.price}</td>
                                                <td style="text-align: center;">${product.factory}</td>
                                                <td>
                                                    <a href="/admin/product/${product.id}"
                                                        class="btn btn-success">View</a>
                                                    <a href="/admin/product/update/${product.id}"
                                                        class="btn btn-warning">Update</a>
                                                    <a href="/admin/product/delete/${product.id}"
                                                        class="btn btn-danger">Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                        <li class="page-item">
                                            <a class="{1 eq currentPage ? 'disabled page-link' : 'page-link'}" href="/admin/product?page=${currentPage - 1}" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                        </li>



                                        <c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
                                            <li class="page-item">
                                                <a class="page-link${(loop.index + 1) == currentPage ? ' active' : ''}"
                                                    href="/admin/product?page=${loop.index + 1}">
                                                    ${loop.index + 1}
                                                </a>
                                            </li>
                                        </c:forEach>




                                        <li class="page-item">
                                            <a class="{totalPages eq currentPage ? 'disabled page-link' : 'page-link'}" href="/admin/product?page=${currentPage + 1}" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col-md-3"></div>
                        </div>

                    </div>
                </main>




                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
            </body>

            </html>