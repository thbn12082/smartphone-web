<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <title>
                    TheBinh - Delete User
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
                        background: linear-gradient(135deg, #232526, #414345);
                        font-family: 'Open Sans', sans-serif;
                        color: #f8f9fa;
                        margin: 0;
                        padding: 0;
                    }

                    .container {
                        padding: 2rem;
                    }

                    h1 {
                        text-align: center;
                        color: antiquewhite;
                        margin-top: 100px;
                        margin-bottom: 2rem;
                    }

                    .confirmation-box {
                        padding: 20px;
                        background-color: #3ae69c;
                        width: 100%;
                        border-radius: 20px;
                        margin-bottom: 30px;
                        text-align: center;
                        font-size: 1.2rem;
                        font-weight: bold;
                        color: #232526;
                    }

                    .action-buttons {
                        display: flex;
                        justify-content: space-between;
                    }

                    .btn {
                        border-radius: 8px;
                        padding: 0.5rem 1.5rem;
                        font-size: 1rem;
                        transition: background-color 0.2s ease, transform 0.2s ease;
                    }

                    .btn-danger {
                        background-color: #e74c3c;
                        border: none;
                        color: #fff;
                    }

                    .btn-danger:hover,
                    .btn-danger:focus {
                        background-color: #c0392b;
                        transform: scale(1.02);
                    }

                    .btn-success {
                        background-color: #198754;
                        border: none;
                        color: #fff;
                        text-decoration: none;
                        text-align: center;
                    }

                    .btn-success:hover,
                    .btn-success:focus {
                        background-color: #157347;
                        transform: scale(1.02);
                    }

                    @media (max-width: 768px) {
                        .action-buttons {
                            flex-direction: column;
                            gap: 1rem;
                            align-items: center;
                        }
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
                                <h1>Delete user
                                    ${userId}</h1>
                            </div>
                            <div class="col-xl-3"></div>
                        </div>
                        <div class="row">
                            <div class="col-xl-3"></div>
                            <div class="col-xl-6" style="margin-top: 50px;">
                                <div class="confirmation-box">
                                    Are you sure you want to delete this user?
                                </div>
                                <div class="action-buttons">
                                    <form:form action="/admin/user/delete/${userId}" method="post">
                                        <button type="submit" class="btn btn-danger">Delete</button>
                                    </form:form>
                                    <a href="/admin/user" class="btn btn-success">Back</a>
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