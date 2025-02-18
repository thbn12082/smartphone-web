<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Delete User ${userId}</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3"></div>
                        <div class="col-xl-6">
                            <h1 style="text-align: center;">Delete user ${userId}</h1>
                            <hr>
                            <br>
                            <div class="col-xl-3"></div>
                        </div>
                        <div class="row">
                            <div class="col-xl-3"></div>
                            <div class="col-xl-6">
                                <div class="box"
                                    style="padding: 20px; background-color: rgb(234, 93, 93);width: 100%; border-radius: 20px; margin-bottom: 30px;">
                                    Are you sure
                                    to delete this user?</div>
                                <div class="inner" style="display: flex; justify-content: space-between;">
                                    <form:form action="/admin/user/delete/${userId}" method="post">
                                        <button class="btn btn-danger" style="border: solid 1px black;">Delete</button>
                                    </form:form>

                                    <form:form>
                                        <a href="/admin/user" class="btn btn-success"
                                            style="border: solid 1px black;">Back</a>
                                    </form:form>
                                </div>
                            </div>



                            <div class="col-xl-3"></div>
                        </div>
                    </div>

                </div>
            </body>

            </html>