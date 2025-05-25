<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <title>TheBinh</title>
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
                <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" />
                <link href="/css/dashboard.css" rel="stylesheet" />
                <style>
                    body {
                        background: linear-gradient(135deg, #232526 0%, #414345 100%);
                    }

                    .dashboard-main-content {
                        margin-left: 150px;
                        transition: margin-left 0.3s;
                    }

                    @media (max-width: 991px) {
                        .dashboard-main-content {
                            margin-left: 0;
                        }
                    }

                    .dashboard-card-link {
                        text-decoration: none;
                    }

                    .dashboard-card {
                        border-radius: 16px;
                        background: #23272b;
                        box-shadow: 0 4px 24px 0 rgba(13, 110, 253, 0.07);
                        transition: transform 0.15s, box-shadow 0.15s;
                        min-height: 90px;
                        padding: 18px 14px;
                    }

                    .dashboard-card:hover {
                        transform: translateY(-4px) scale(1.03);
                        box-shadow: 0 8px 32px 0 rgba(13, 110, 253, 0.13);
                    }

                    .dashboard-card .numbers p {
                        font-size: 0.82rem;
                        margin-bottom: 3px;
                        letter-spacing: 1px;
                        color: #b0b8c1;
                    }

                    .dashboard-card .numbers h5 {
                        font-size: 1.35rem;
                        font-weight: bold;
                        margin-bottom: 0;
                    }

                    .dashboard-card .icon {
                        width: 38px;
                        height: 38px;
                        background: linear-gradient(135deg, #0d6efd 60%, #4f8cff 100%);
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        border-radius: 50%;
                        box-shadow: 0 2px 8px rgba(13, 110, 253, 0.10);
                        margin-left: auto;
                        margin-right: 0;
                    }

                    .dashboard-card .icon.icon-danger {
                        background: linear-gradient(135deg, #ff416c 60%, #ff4b2b 100%);
                    }

                    .dashboard-card .icon.icon-success {
                        background: linear-gradient(135deg, #00c851 60%, #28a745 100%);
                    }

                    .dashboard-card .icon i {
                        font-size: 1.25rem;
                        color: #fff;
                        display: block;
                        line-height: 1;
                    }

                    @media (max-width: 1200px) {
                        .dashboard-card .numbers h5 {
                            font-size: 1.1rem;
                        }

                        .dashboard-card {
                            min-height: 80px;
                            padding: 12px 8px;
                        }
                    }

                    @media (max-width: 768px) {
                        .dashboard-main-content {
                            margin-left: 0;
                            padding: 0 5px;
                        }

                        .dashboard-card {
                            min-height: 70px;
                            padding: 10px 6px;
                        }
                    }
                </style>
            </head>

            <body>
                <div class="min-height-300 bg-dark position-absolute w-100"></div>
                <jsp:include page="../layout/sidebar.jsp" />
                <div class="container-fluid py-4 dashboard-main-content">
                    <div class="row g-3 justify-content-center" style="margin-top: 60px;">
                        <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                            <a href="/admin/user" class="dashboard-card-link">
                                <div class="card dashboard-card shadow-lg border-0">
                                    <div class="d-flex align-items-center">
                                        <div class="numbers flex-grow-1">
                                            <p class="text-uppercase font-weight-bold mb-1">Số lượng User</p>
                                            <h5 class="text-primary">${countUser}</h5>
                                        </div>
                                        <div class="icon ms-3">
                                            <i class="bi bi-people-fill"></i>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                            <a href="/admin/product" class="dashboard-card-link">
                                <div class="card dashboard-card shadow-lg border-0">
                                    <div class="d-flex align-items-center">
                                        <div class="numbers flex-grow-1">
                                            <p class="text-uppercase font-weight-bold mb-1">Số lượng Product</p>
                                            <h5 class="text-danger">${countProduct}</h5>
                                        </div>
                                        <div class="icon icon-danger ms-3">
                                            <i class="bi bi-phone-fill"></i>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-6 col-12">
                            <a href="/admin/order" class="dashboard-card-link">
                                <div class="card dashboard-card shadow-lg border-0">
                                    <div class="d-flex align-items-center">
                                        <div class="numbers flex-grow-1">
                                            <p class="text-uppercase font-weight-bold mb-1">Số lượng Order</p>
                                            <h5 class="text-success">${countOrder}</h5>
                                        </div>
                                        <div class="icon icon-success ms-3">
                                            <i class="bi bi-receipt"></i>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
            </body>

            </html>