<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
                    <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-icons.css"
                        rel="stylesheet" />
                    <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-svg.css"
                        rel="stylesheet" />
                    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
                    <link href="/css/dashboard.css" rel="stylesheet" />
                    <style>
                        #exampleInputEmail1,
                        #exampleInputPassword1,
                        #PhoneNumber,
                        #FullName,
                        #address,
                        #avatarFile,
                        #role {
                            width: 340px;
                            height: 48px;
                            padding: 12px 18px;
                            font-size: 18px;
                            margin-right: 5px;
                        }

                        #address {
                            width: 685px;
                        }
                    </style>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                    <script>
                        $(document).ready(() => {
                            const avatarFile = $("#avatarFile");
                            avatarFile.change(function (e) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#avatarPreview").attr("src", imgURL);
                                $("#avatarPreview").css({ "display": "block" });
                            });
                        }); 
                    </script>
                </head>

                <body class="g-sidenav-show  bg-gray-100">
                    <div class="min-height-200 bg-dark position-absolute w-100"></div>
                    <jsp:include page="../layout/sidebar.jsp" />
                    <main>
                        <div class="content">
                            <div class="inner-content" style="margin-top: 50px;">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-3"></div>
                                        <div class="col-xl-6">
                                            <h1 style="text-align: center; color:antiquewhite ;">Create a product</h1>
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
                                            <form:form action="/admin/product/create" method="post"
                                                modelAttribute="newProduct" enctype="multipart/form-data">

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="name" class="form-label">Name:</label>
                                                            <form:input type="text" class="form-control" id="name"
                                                                path="name" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="price" class="form-label">Price:</label>
                                                            <form:input type="number" class="form-control" id="price"
                                                                path="price" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="exampleFormControlTextarea1">Detail description:</label>
                                                    <form:textarea class="form-control" id="detailDesc" rows="3"
                                                        path="detailDesc"></form:textarea>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="shortDesc" class="form-label">Short
                                                                description:</label>
                                                            <form:input type="text" class="form-control" id="shortDesc"
                                                                path="shortDesc" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="quantity" class="form-label">Quantity:</label>
                                                            <form:input type="number" class="form-control" id="quantity"
                                                                path="quantity" />
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="factory" class="form-label">Factory:</label>
                                                            <form:select class="form-select" path="factory"
                                                                id="factory">
                                                                <form:option value="Apple">Apple</form:option>
                                                                <form:option value="Samsung">Samsung</form:option>

                                                            </form:select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="target" class="form-label">Target:</label>
                                                            <form:select class="form-select" path="target" id="target">
                                                                <form:option value="Gaming">Gaming</form:option>
                                                                <form:option value="Work">Work</form:option>
                                                            </form:select>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="avatarFile" class="form-label">Image:</label>
                                                    <input class="form-control" type="file" id="avatarFile"
                                                        accept=".png, .jpg, .jpeg" name="thebinhFile" />
                                                </div>

                                                <br>
                                                <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                    id="avatarPreview" />
                                                <br>

                                                <div class="d-flex justify-content-between">
                                                    <button type="submit" class="btn btn-primary">Create</button>
                                                    <a href="/admin/product" class="btn btn-success">Back</a>
                                                </div>
                                            </form:form>

                                        </div>
                                        <div class="col-xl-3"></div>
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