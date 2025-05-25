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
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <!-- CSS Files -->
                <link href="/css/dashboard.css" rel="stylesheet" />
                <style>
                    body {
                        background: linear-gradient(135deg, #232526, #414345);
                        font-family: 'Open Sans', sans-serif;
                        color: #f8f9fa;
                        margin: 0;
                        padding: 0;
                    }

                    .content {
                        padding: 2rem;
                    }

                    .inner-content {
                        margin-top: 50px;
                        max-width: 800px;
                        margin-left: auto;
                        margin-right: auto;
                        background: rgba(0, 0, 0, 0.6);
                        padding: 2rem;
                        border-radius: 10px;
                        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
                    }

                    h1 {
                        text-align: center;
                        color: #FFDD57;
                        margin-bottom: 1rem;
                    }

                    hr {
                        border-top: 1px solid #f8f9fa;
                        margin-bottom: 1.5rem;
                    }

                    .form-group label {
                        font-weight: bold;
                        color: #f8f9fa;
                    }

                    .form-control,
                    .form-select {
                        border-radius: 8px;
                        background: #353a40;
                        border: 1px solid #555;
                        color: #f8f9fa;
                    }

                    .form-control::placeholder {
                        color: #ccc;
                    }

                    .btn {
                        border-radius: 8px;
                        transition: all 0.25s ease;
                        padding: 0.5rem 1rem;
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

                    .btn-success {
                        background-color: #198754;
                        border: none;
                        color: #fff;
                    }

                    .btn-success:hover,
                    .btn-warning:hover {
                        opacity: 0.9;
                    }

                    a.btn {
                        text-decoration: none;
                    }
                </style>
            </head>

            <body>

                <jsp:include page="../layout/sidebar.jsp" />
                <main>
                    <div class="content">
                        <div class="inner-content" style="margin-top: 50px;">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-3"></div>
                                    <div class="col-xl-6">
                                        <h1 style="text-align: center; color: antiquewhite;">Update user ${idUser}</h1>
                                        <hr>
                                        <br>
                                        <div class="col-xl-3"></div>
                                    </div>
                                </div>

                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-3"></div>
                                    <div class="col-xl-6" style="margin-top: 50px;">
                                        <form:form action="/admin/user/update/${idUser}" method="post"
                                            modelAttribute="updateUser">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email:</label>
                                                <form:input type="email" class="form-control" id="exampleInputEmail1"
                                                    aria-describedby="emailHelp" placeholder="Enter email"
                                                    path="email" />
                                            </div>

                                            <div class="form-group">
                                                <label>Phone Number:</label>
                                                <form:input type="text" class="form-control" id="PhoneNumber"
                                                    path="phone" />
                                            </div>

                                            <div class="form-group">
                                                <label>Full Name:</label>
                                                <form:input type="text" class="form-control" id="FullName"
                                                    path="fullName" />
                                            </div>

                                            <div class="form-group">
                                                <label>Address:</label>
                                                <form:input type="text" class="form-control" id="address"
                                                    path="address" />
                                            </div>

                                            <div style="display: flex; justify-content: space-between;">
                                                <button type="submit" class="btn btn-warning">Update</button>
                                                <a href="/admin/user"class="btn btn-success">Back</a>
                                            </div>

                                        </form:form>
                                    </div>


                                </div>

                            </div>
                        </div>
                </main>





                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
            </body>

            </html>