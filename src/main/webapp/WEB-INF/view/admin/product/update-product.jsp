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
                                        <form:form action="/admin/product/create" method="post"
                                            modelAttribute="newProduct" enctype="multipart/form-data">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <c:set var="errorName">
                                                            <form:errors path="name" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label for="name" type="text" class="form-label">Name:</label>
                                                        <form:input type="text"
                                                            class="form-control ${not empty errorName ? 'is-invalid' : ''}"
                                                            id="name" path="name" />
                                                        ${errorName}
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <c:set var="errorPrice">
                                                            <form:errors path="price" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label for="price" class="form-label ">Price:</label>
                                                        <form:input type="number"
                                                            class="form-control ${not empty errorPrice ? 'is-invalid':''}"
                                                            id="price" path="price" />
                                                        ${errorPrice}
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <c:set var="errorDetailDesc">
                                                    <form:errors path="detailDesc" cssClass="invalid-feedback" />
                                                </c:set>
                                                <label for="exampleFormControlTextarea1">Detail description:</label>
                                                <form:textarea type="text"
                                                    class="form-control ${not empty errorDetailDesc ? 'is-invalid': ''}"
                                                    id="detailDesc" rows="3" path="detailDesc" />
                                                ${errorDetailDesc}
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <c:set var="errorShortDesc">
                                                            <form:errors path="shortDesc" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label for="shortDesc" class="form-label">Short
                                                            description:</label>
                                                        <form:input type="text"
                                                            class="form-control ${not empty errorShortDesc ? 'is-invalid' : ''}"
                                                            id="shortDesc" path="shortDesc" />
                                                        ${errorShortDesc}
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <c:set var="errorQuantity">
                                                            <form:errors path="quantity" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label for="quantity1" class="form-label ">Quantity:</label>
                                                        <form:input type="number"
                                                            class="form-control ${not empty errorQuantity ? 'is-invalid': ''}"
                                                            id="quantity1" path="quantity" />
                                                        ${errorQuantity}
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="factory" class="form-label">Factory:</label>
                                                        <form:select class="form-select" path="factory" id="factory">
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
                </main>




                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/dashboard.js"></script>
            </body>

            </html>