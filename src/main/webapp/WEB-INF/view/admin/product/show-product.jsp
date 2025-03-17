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
                            </div>
                            <div class="col-md-3"></div>
                        </div>

                    </div>
                </main>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn.viettelstore.vn/Images/Product/ProductImage/70698293.jpeg"
                                    class="card-img-top img-fluid" alt="Xiaomi Redmi Note 14">
                                <div class="card-body">
                                    <h5 class="card-title">Xiaomi Redmi Note </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="text-primary fw-bold">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
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
                            <div class="card">
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
                            <div class="card">
                                <img src="https://didongthongminh.vn/images/products/2025/02/08/original/A60_5g.jpg"
                                    class="card-img-top img-fluid" alt="OPPO A60">
                                <div class="card-body">
                                    <h5 class="card-title">OPPO A60 </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/s/_sm-a536_04._device_design_m_1_2.jpg"
                                    class="card-img-top img-fluid" alt="Xiaomi Redmi Note 14">
                                <div class="card-body">
                                    <h5 class="card-title">Samsung A50</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="text-primary fw-bold">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/x/media/catalog/product/s/s/ss-s24-ultra-xam-222.png"
                                    class="card-img-top img-fluid" alt="iPhone 15 Pro Max">
                                <div class="card-body">
                                    <h5 class="card-title">Samsung S24 Ultra</h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">32.890.000₫</p>
                                    <p class="text-muted">Quà 1.000.000₫</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <a href="/test2" style="text-decoration: none;">
                                <div class="card">
                                    <img src="https://clickbuy.com.vn/uploads/pro/iphone-16-8975-lthx-300x300-217852.jpg"
                                        class="card-img-top img-fluid" alt="iPhone 13">
                                    <div class="card-body">
                                        <h5 class="card-title" style="color: black;">iPhone 13</h5>
                                        <p class="card-text">8GB/128GB</p>
                                        <p class="card-text">12.850.000₫</p>
                                        <p class="text-muted">Quà 500.000₫</p>
                                    </div>
                                </div>
                            </a>

                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card">
                                <img src="https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-xiaomi-redmi-note-14_2__2.png"
                                    class="card-img-top img-fluid" alt="OPPO A60">
                                <div class="card-body">
                                    <h5 class="card-title">OPPO A60 </h5>
                                    <p class="card-text">8GB/128GB</p>
                                    <p class="card-text">5.490.000₫</p>
                                    <p class="text-muted">Quà 200.000₫</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
            </body>

            </html>