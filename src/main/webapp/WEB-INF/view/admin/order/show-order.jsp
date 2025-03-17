<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

            <body class="g-sidenav-show   bg-gray-100">
                <div class="min-height-300 bg-dark position-absolute w-100"></div>
                <jsp:include page="../layout/sidebar.jsp" />
                <main>
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <div class="inner-header"
                                    style="display: flex; justify-content: space-between;margin-top: 94px;">
                                    <h2 style="color: antiquewhite;">Manage orders</h2>
                                    <button type="button" class="btn btn-primary"
                                        onclick="window.location.href='http://localhost:8080/admin/order/create'">Create
                                        Order</button>
                                </div>
                                <hr>
                            </div>

                            <div class="col-md-3"></div>
                        </div>
                        <div class="container mt-5">
                            <div class="d-flex justify-content-center row">
                                <div class="col-md-10">
                                    <div class="rounded">
                                        <div class="table-responsive table-borderless">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">

                                                        </th>
                                                        <th>Order #</th>
                                                        <th>Company name</th>
                                                        <th>status</th>
                                                        <th>Total</th>
                                                        <th>Created</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody class="table-body">
                                                    <tr class="cell-1">
                                                        <td class="text-center">

                                                        </td>
                                                        <td>#SO-13487</td>
                                                        <td>Gasper Antunes</td>
                                                        <td><span class="badge badge-success">Fullfilled</span></td>
                                                        <td>$2674.00</td>
                                                        <td>Today</td>
                                                        <td><i class="fa fa-ellipsis-h text-black-50"></i></td>
                                                    </tr>
                                                    <tr class="cell-1">
                                                        <td class="text-center">

                                                        </td>
                                                        <td>#SO-13453</td>
                                                        <td>Aartsen van</td>
                                                        <td><span class="badge badge-info">Confirmed</span></td>
                                                        <td>$3454.00</td>
                                                        <td>Yesterday</td>
                                                        <td><i class="fa fa-ellipsis-h text-black-50"></i></td>
                                                    </tr>
                                                    <tr class="cell-1">
                                                        <td class="text-center">

                                                        </td>
                                                        <td>#SO-13498</td>
                                                        <td>Trashes Habard</td>
                                                        <td><span class="badge badge-danger">Partially shipped</span>
                                                        </td>
                                                        <td>$6274.00</td>
                                                        <td>May 12,2020</td>
                                                        <td><i class="fa fa-ellipsis-h text-black-50"></i></td>
                                                    </tr>
                                                    <tr class="cell-1">
                                                        <td class="text-center">

                                                        </td>
                                                        <td>#SO-16499</td>
                                                        <td>Samban Hubart</td>
                                                        <td><span class="badge badge-success">Fullfilled</span></td>
                                                        <td>$6375.00</td>
                                                        <td>May 11,2020</td>
                                                        <td><i class="fa fa-ellipsis-h text-black-50"></i></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>


                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
            </body>

            </html>