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
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-3"></div>
                            <div class="col-xl-6">
                                <h1 style="text-align: center; color: antiquewhite;">Delete user ${userId}</h1>

                                <div class="col-xl-3"></div>
                            </div>
                            <div class="row">
                                <div class="col-xl-3"></div>
                                <div class="col-xl-6">
                                    <div class="box"
                                        style="padding: 20px; background-color: #3ae69c;width: 100%; border-radius: 20px; margin-bottom: 30px;">
                                        Are you sure
                                        to delete this user?</div>
                                    <div class="inner" style="display: flex; justify-content: space-between;">
                                        <form:form action="/admin/user/delete/${userId}" method="post">
                                            <button class="btn btn-danger">Delete</button>
                                        </form:form>
                                        <a href="/admin/user"><button class="btn btn-success">Back</button></a>
                                    </div>
                                </div>



                                <div class="col-xl-3"></div>
                            </div>
                        </div>

                    </div>
                </main>

                <jsp:include page="../layout/footer.jsp" />
                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>

            </body>


            </html>