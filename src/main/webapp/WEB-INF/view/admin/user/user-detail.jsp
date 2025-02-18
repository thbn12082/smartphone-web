<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>User Detail ${userId}</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3"></div>
                        <div class="col-xl-6">
                            <h1 style="text-align: center;">User ${userId} Detail </h1>
                            <hr>
                            <br>
                            <div class="col-xl-3"></div>
                        </div>
                        <div class="row">
                            <div class="col-xl-3"></div>
                            <div class="col-xl-6" style="justify-items: center;">
                                <div class="card" style="width: 80%;">
                                    <div class="card-header" style="font-weight: 700;">
                                        User Information
                                    </div>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">
                                            <span style="font-weight: 700;">Id: </span>${user.id}
                                        </li>
                                        <li class="list-group-item"><span style="font-weight: 700;">Email:
                                            </span>${user.email}</li>
                                        <li class="list-group-item"><span style="font-weight: 700;">FullName:
                                            </span>${user.fullName}</li>
                                        <li class="list-group-item"><span style="font-weight: 700;">Address:
                                            </span>${user.address}</li>
                                    </ul>
                                    <a href="/admin/user" class="btn btn-success"
                                        style="border: solid 1px black;">Back</a>
                                </div>
                            </div>

                            <div class="col-xl-3"></div>
                        </div>
                    </div>

                </div>
            </body>

            </html>