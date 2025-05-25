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

                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <!-- CSS Files -->
                <link href="/css/dashboard.css" rel="stylesheet" />
                <style>
                    body {
                        background: linear-gradient(135deg, #232526 0%, #414345 100%);
                        font-family: 'Open Sans', sans-serif;
                        color: #f8f9fa;
                    }

                    .container-fluid {
                        padding: 2rem;
                        margin-left: 270px;
                    }

                    h3 {
                        text-align: center;
                        margin-bottom: 1.5rem;
                    }

                    hr {
                        border-top: 1px solid #f8f9fa;
                    }

                    .satisfaction-stats {
                        width: 300px;
                        margin: 50px auto;
                        text-align: center;
                    }

                    .stats {
                        display: flex;
                        justify-content: space-around;
                        margin-bottom: 20px;
                    }

                    .satisfied,
                    .dissatisfied {
                        padding: 20px;
                        border-radius: 5px;
                    }

                    .satisfied {
                        background-color: #e6f7e6;
                        color: #27ae60;
                    }

                    .dissatisfied {
                        background-color: #ffe6e6;
                        color: #e74c3c;
                    }

                    .stats span {
                        font-size: 2em;
                        font-weight: bold;
                        display: block;
                    }

                    .alert-danger {
                        background-color: rgba(231, 76, 60, 0.15);
                        border: 1px solid #e74c3c;
                        padding: 1rem;
                        border-radius: 8px;
                        color: #e74c3c;
                        font-weight: bold;
                        text-align: center;
                        margin-bottom: 1rem;
                    }

                    .btn-danger {
                        background-color: #e74c3c;
                        border: none;
                        border-radius: 8px;
                        padding: 0.5rem 1rem;
                        transition: background 0.2s ease, transform 0.2s ease;
                    }

                    .btn-danger:hover,
                    .btn-danger:focus {
                        background-color: #c0392b;
                        transform: scale(1.03);
                    }
                </style>
            </head>


            <body>

                <jsp:include page="../layout/sidebar.jsp" />
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">

                            <div class="mt-5">
                                <div class="row">
                                    <div class="col-12 mx-auto">
                                        <div class="d-flex">
                                            <h3 style="color: antiquewhite; justify-content: center;">
                                                Table Products</h3>
                                        </div>

                                        <hr />


                                        <div class=" mt-5">
                                            <div class="row">
                                                <div class="col-12 mx-auto">
                                                    <div class="d-flex justify-content-between">
                                                        <h3 style="color: bisque;">Delete product with id = ${id}</h3>
                                                    </div>

                                                    <hr />

                                                    <div style="color: sandybrown;">
                                                        Are you sure to delete this product?
                                                    </div>
                                                    <form:form method="post" action="/admin/product/delete"
                                                        modelAttribute="id">
                                                        <input type="hidden" name="id" value="${id}" />
                                                        <button class="btn btn-danger">Confirm</button>
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