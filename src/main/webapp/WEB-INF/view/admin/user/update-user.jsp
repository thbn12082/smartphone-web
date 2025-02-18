<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="content">
                    <div class="inner-content" style="margin-top: 50px;">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-3"></div>
                                <div class="col-xl-6">
                                    <h1 style="text-align: center;">Update user ${idUser}</h1>
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
                                    <form:form action="/admin/user/update/${idUser}" method="post"
                                        modelAttribute="updateUser">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email:</label>
                                            <form:input type="email" class="form-control" id="exampleInputEmail1"
                                                aria-describedby="emailHelp" placeholder="Enter email" path="email" />
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label>Phone Number:</label>
                                            <form:input type="text" class="form-control" id="PhoneNumber"
                                                path="phone" />
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label>Full Name:</label>
                                            <form:input type="text" class="form-control" id="FullName"
                                                path="fullName" />
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label>Address:</label>
                                            <form:input type="text" class="form-control" id="address" path="address" />
                                        </div>
                                        <br>
                                        <button type="submit" class="btn btn-warning">Update</button>
                                    </form:form>
                                </div>


                            </div>

                        </div>
                    </div>


            </body>

            </html>