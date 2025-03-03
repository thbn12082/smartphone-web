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
            </head>

            <body class="g-sidenav-show   bg-gray-100">
                <div class="min-height-200 bg-dark position-absolute w-100"></div>
                <jsp:include page="../layout/sidebar.jsp" />
                <main>
                    <div class="content">
                        <div class="inner-content" style="margin-top: 50px;">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-3"></div>
                                    <div class="col-xl-6">
                                        <h1 style="text-align: center; color: antiquewhite;">Update product ${idProduct}
                                        </h1>
                                        <hr>
                                        <br>
                                        <div class="col-xl-3"></div>
                                    </div>
                                </div>

                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-3"></div>
                                    <div class="col-xl-6">
                                        <!-- <form:form action="/admin/product/update/${idProduct}" method="post"
                                            modelAttribute="newProduct">
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
                                                <a href="/admin/product"><button class="btn btn-success">Back</button></a>

                                            </div>

                                        </form:form> -->
                                    </div>


                                </div>

                            </div>
                        </div>
                </main>



                <jsp:include page="../layout/footer.jsp" />

                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
            </body>

            </html>