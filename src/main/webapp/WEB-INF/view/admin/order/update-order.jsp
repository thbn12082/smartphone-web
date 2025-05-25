<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">


                <head>
                    <meta charset="utf-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <title>TheBinh - Update Order</title>
                    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
                    <link rel="icon" type="image/png" href="img/favicon.png">
                    <link rel="stylesheet"
                        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
                    <!--     Fonts and icons     -->
                    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
                    <!-- Nucleo Icons -->
                    <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-icons.css"
                        rel="stylesheet" />
                    <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-svg.css"
                        rel="stylesheet" />

                    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
                        rel="stylesheet" />
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
                        crossorigin="anonymous"></script>
                    <!-- CSS Files -->
                    <link href="/css/dashboard.css" rel="stylesheet" />
                    <style>
                        body {
                            background: linear-gradient(135deg, #232526, #414345);
                            font-family: 'Open Sans', sans-serif;
                            color: #f8f9fa;
                            margin: 0;
                            padding: 0;
                            margin-left: 150px;
                        }

                        .container-fluid {
                            padding: 2rem;
                        }

                        .card {
                            background: rgba(0, 0, 0, 0.7);
                            border-radius: 10px;
                            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
                            padding: 2rem;
                            margin-top: 2rem;
                        }

                        h3 {
                            text-align: center;
                            color: #ffdd57;
                            margin-bottom: 1rem;
                        }

                        hr {
                            border-top: 1px solid #f8f9fa;
                            margin: 1rem 0 2rem;
                        }

                        .form-label {
                            font-weight: bold;
                            margin-bottom: 0.5rem;
                        }

                        .btn {
                            border-radius: 8px;
                            transition: all 0.25s ease;
                            padding: 0.5rem 1.2rem;
                        }

                        .btn:hover,
                        .btn:focus {
                            transform: scale(1.02);
                        }

                        .btn-warning {
                            background-color: #ffc107;
                            border: none;
                            color: #23272b;
                        }

                        @media (max-width: 576px) {
                            .mb-3.col-12.col-md-6 {
                                flex: 0 0 100%;
                                max-width: 100%;
                            }
                        }
                    </style>
                </head>


                <body class="sb-nav-fixed">

                    <div id="layoutSidenav">
                        <jsp:include page="../layout/sidebar.jsp" />
                        <div id="layoutSidenav_content">
                            <main>
                                <div class="container-fluid px-4">

                                    <div class="row justify-content-center">
                                        <div class="col-md-8 col-12">
                                            <div class="card">
                                                <h3>Update Order</h3>
                                                <hr />
                                                <form:form method="post" action="/admin/order/update"
                                                    modelAttribute="newOrder" class="row g-3">
                                                    <div class="mb-3" style="display: none;">
                                                        <label class="form-label">Id:</label>
                                                        <form:input type="text" class="form-control" path="id" />
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Order id = ${newOrder.id}</label>
                                                        &nbsp;&nbsp;
                                                        <label class="form-label">Price:
                                                            <fmt:formatNumber type="number"
                                                                value="${newOrder.totalPrice}" /> đ
                                                        </label>
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">User:</label>
                                                        <form:input type="text" class="form-control" disabled="true"
                                                            path="user.fullName" />
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Status:</label>
                                                        <form:select class="form-select" path="status">
                                                            <form:option value="PENDING">PENDING</form:option>
                                                            <form:option value="SHIPPING">SHIPPING</form:option>
                                                            <form:option value="COMPLETE">COMPLETE</form:option>
                                                            <form:option value="CANCEL">CANCEL</form:option>
                                                        </form:select>
                                                    </div>
                                                    <div class="col-12 text-center mb-3">
                                                        <button type="submit" class="btn btn-warning">Update</button>
                                                    </div>
                                                </form:form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </main>

                        </div>
                    </div>


                </body>

                </html>