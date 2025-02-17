<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <style>
                /* .container {
                    margin-right: 20%;
                    margin-left: 20%;
                } */
            </style>
        </head>

        <body>
            <div class="content">
                <div class="inner-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-3"></div>
                            <div class="col-xl-6">
                                <h1 style="text-align: center;">Create a user</h1>
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
                                <form>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1"
                                            aria-describedby="emailHelp" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email
                                            with
                                            anyone
                                            else.</small>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1"
                                            placeholder="Password">
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <label>Phone Number:</label>
                                        <input type="text" class="form-control" id="PhoneNumber">
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <label>Full Name:</label>
                                        <input type="text" class="form-control" id="FullName">
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <label>Address:</label>
                                        <input type="text" class="form-control" id="address">
                                    </div>
                                    <br>
                                    <button type="submit" class="btn btn-primary">Create</button>
                                </form>
                            </div>
                            <div class="col-xl-3"></div>
                        </div>


                    </div>

                </div>
            </div>


        </body>

        </html>