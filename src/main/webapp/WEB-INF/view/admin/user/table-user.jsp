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
                                    <h2 style="color: antiquewhite;">Manage users</h2>
                                    <button type="button" class="btn btn-primary"
                                        onclick="window.location.href='http://localhost:8080/admin/user/create'">Create
                                        User</button>
                                </div>
                                <hr>
                            </div>
                            <div class="col-md-3"></div>
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col" style="color: antiquewhite;">ID</th>
                                            <th scope="col" style="color: antiquewhite;">Email</th>
                                            <th scope="col" style="color: antiquewhite;">Full Name</th>
                                            <th scope="col" style="color: antiquewhite;">Role</th>
                                            <th scope="col" style="color: antiquewhite;padding-left: 104px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="user" items="${users}">
                                            <tr>
                                                <th scope="row">${user.id}</th>
                                                <td>${user.email}</td>
                                                <td>${user.fullName}</td>
                                                <td>${user.role.name}</td>
                                                <td>
                                                    <a href="/admin/user/${user.id}" class="btn btn-success">View</a>
                                                    <a href="/admin/user/update/${user.id}"
                                                        class="btn btn-warning">Update</a>
                                                    <a href="/admin/user/delete/${user.id}"
                                                        class="btn btn-danger">Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-3"></div>
                        </div>

                    </div>
                </main>


                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>

            </body>


            </html>