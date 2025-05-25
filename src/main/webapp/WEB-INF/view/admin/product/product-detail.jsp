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
                <style>
                    .product-detail-container {
                        background: linear-gradient(135deg, #232526 0%, #414345 100%);
                        padding: 2rem 1rem;
                        min-height: 100vh;
                    }

                    h1.product-title {
                        text-align: center;
                        color: #f8f9fa;
                        text-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
                        margin-bottom: 1rem;
                    }

                    .card {
                        background: #23272b;
                        border-radius: 18px;
                        box-shadow: 0 8px 32px rgba(31, 38, 135, 0.15);
                        border: none;
                        margin-top: 1rem;
                    }

                    .card-header {
                        background: #18191a;
                        color: #f8f9fa;
                        font-weight: 700;
                        border-bottom: 1px solid #343a40;
                    }

                    .list-group-item {
                        background: #23272b;
                        color: #f8f9fa;
                        border: none;
                        border-bottom: 1px solid #343a40;
                    }

                    .product-img {
                        display: block;
                        width: 100%;
                        height: auto;
                        border-radius: 18px;
                        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.15);
                    }

                    .btn-back {
                        background-color: #0d6efd;
                        border: none;
                        color: #fff;
                        border-radius: 8px;
                        padding: 0.5rem 1rem;
                        transition: background 0.2s ease, transform 0.2s ease, box-shadow 0.2s ease;
                        display: inline-block;
                        margin-top: 1rem;
                        text-align: center;
                    }

                    .btn-back:hover,
                    .btn-back:focus {
                        transform: scale(1.05);
                        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
                    }
                </style>
            </head>

            <!-- <body class="g-sidenav-show   bg-gray-100">
                <div class="min-height-150 bg-dark position-absolute w-100"></div> -->
            <jsp:include page="../layout/sidebar.jsp" />



            <div class="product-detail-container">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3"></div>
                        <div class="col-xl-6">
                            <h1 class="product-title">Product ${product.id} Detail</h1>
                            <hr>
                            <img class="product-img" src="/images/product/${product.image}" alt="Product image">
                            <div class="card" style="width: 100%; margin-top: 10px;">
                                <div class="card-header">
                                    Product Information
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <span style="font-weight: 700;">Id: </span>${product.id}
                                    </li>
                                    <li class="list-group-item">
                                        <span style="font-weight: 700;">Name: </span>${product.name}
                                    </li>
                                </ul>
                                <a href="/admin/product" class="btn-back">Back</a>
                            </div>
                        </div>
                        <div class="col-xl-3"></div>
                    </div>
                </div>
            </div>

            <script src="/js/bootstrap.min.js"></script>
            <script src="/js/dashboard.js"></script>
            </body>

            </html>