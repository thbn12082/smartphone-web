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

            <body class="g-sidenav-show   bg-gray-100">
                <div class="min-height-150 bg-dark position-absolute w-100"></div>
                <jsp:include page="../layout/sidebar.jsp" />

                <main>

                    <div class="container">
                        <div class="row">
                            <div class="col-xl-3"></div>
                            <div class="col-xl-6">
                                <h1 style="text-align: center; color: antiquewhite;">User ${userId} Detail </h1>
                                <hr>
                                <br>
                                <div class="col-xl-3"></div>
                            </div>
                            <div class="row">
                                <div class="col-xl-3"></div>
                                <div class="col-xl-6" style="justify-items: center;margin-top: -2%;">
                                    <img class="card-img-top" src="/images/avatar/${user.avatar}">
                                    <div class="card" style="width: 80%; margin-top: 10px">
                                        <div class="card-header" style="font-weight: 700;">
                                            User Information
                                        </div>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item">
                                                <span style="font-weight: 700;">Id: </span>${user.id}
                                            </li>
                                            <li class="list-group-item"><span style="font-weight: 700;">Email:
                                                </span>${user.email}</li>
                                            <li class="list-group-item"><span style="font-weight: 700;">FullName:
                                                </span>${user.fullName}</li>
                                            <li class="list-group-item"><span style="font-weight: 700;">Address:
                                                </span>${user.address}</li>
                                        </ul>
                                        <a href="/admin/user" class="btn btn-success"
                                            style="border: solid 1px black;">Back</a>
                                    </div>
                                </div>

                                <div class="col-xl-3"></div>
                            </div>
                        </div>

                    </div>
                </main>



                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
            </body>

            </html>