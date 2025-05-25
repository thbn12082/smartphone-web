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
                    body {
                        background: linear-gradient(135deg, #232526 0%, #414345 100%);
                        font-family: 'Open Sans', sans-serif;
                        color: #f8f9fa;
                    }

                    .container {
                        padding: 2rem;
                    }

                    h1 {
                        text-align: center;
                        color: #FFDD57;
                        margin-bottom: 1rem;
                    }

                    hr {
                        border-top: 1px solid #f8f9fa;
                    }

                    .card {
                        background: #23272b;
                        border-radius: 10px;
                        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
                        margin-top: 1rem;
                    }

                    .card-header {
                        background: #18191a;
                        font-weight: 700;
                        color: #FFDD57;
                    }

                    .list-group-item {
                        background: transparent;
                        border: none;
                        border-bottom: 1px solid rgba(255, 255, 255, 0.1);
                    }

                    .list-group-item span {
                        font-weight: 700;
                    }

                    .avatar {
                        display: block;
                        width: 150px;
                        height: 150px;
                        border-radius: 50%;
                        object-fit: cover;
                        margin: 0 auto 1rem auto;
                        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
                    }

                    .btn-success {
                        background-color: #198754;
                        border: none;
                        padding: 0.5rem 1rem;
                        border-radius: 8px;
                        display: block;
                        margin: 1rem auto;
                        transition: transform 0.2s ease;
                    }

                    .btn-success:hover,
                    .btn-success:focus {
                        transform: scale(1.02);
                    }
                </style>
            </head>

            <body>

                <jsp:include page="../layout/sidebar.jsp" />

                <main>
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-3"></div>
                            <div class="col-xl-6">
                                <h1>User ${userId} Detail</h1>
                                <hr>
                                <div class="row" style="margin-top: 2rem;">
                                    <div class="col-xl-12" style="text-align: center;">
                                        <img class="avatar" src="/images/avatar/${user.avatar}" alt="User Avatar">
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="card" style="width: 100%; margin-top: 10px;">
                                            <div class="card-header">
                                                User Information
                                            </div>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">
                                                    <span>Id: </span>${user.id}
                                                </li>
                                                <li class="list-group-item">
                                                    <span>Email: </span>${user.email}
                                                </li>
                                                <li class="list-group-item">
                                                    <span>FullName: </span>${user.fullName}
                                                </li>
                                                <li class="list-group-item">
                                                    <span>Address: </span>${user.address}
                                                </li>
                                            </ul>
                                            <a href="/admin/user" class="btn btn-success">Back</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3"></div>
                        </div>
                    </div>
                </main>



                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
            </body>

            </html>