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
                                            <h1 style="text-align: center; color:antiquewhite ;">Create a user</h1>
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
                                            <form:form action="/admin/user/create" method="post"
                                                modelAttribute="newUser" enctype="multipart/form-data">
                                                <div style="display: flex;">
                                                    <div>
                                                        <div class="form-group" class="col-xl-3">
                                                            <c:set var="errorEmail">
                                                                <form:errors path="email" cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="exampleInputEmail1">Email address</label>
                                                            <form:input type="email"
                                                                class="form-control ${not empty errorEmail ? 'is-invalid' : ''}"
                                                                id="exampleInputEmail1" placeholder="Enter email"
                                                                path="email" />
                                                            ${errorEmail}

                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="form-group" class="col-xl-3">
                                                            <c:set var="errorPassword">
                                                                <form:errors path="password"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set>

                                                            <label for="exampleInputPassword1">Password</label>
                                                            <form:input type="password"
                                                                class="form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                                                id="exampleInputPassword1" placeholder="Password"
                                                                path="password" />
                                                            ${errorPassword}
                                                        </div>
                                                    </div>
                                                </div>

                                                <div style="display: flex;">
                                                    <div class="form-group">
                                                        <c:set var="phoneError">
                                                            <form:errors path="phone" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label>Phone Number:</label>
                                                        <form:input type="text"
                                                            class="form-control ${not empty phoneError ? 'is-invalid' : ''}"
                                                            id="PhoneNumber" path="phone" />
                                                        ${phoneError}
                                                    </div>

                                                    <div class="form-group">

                                                        <c:set var="errorFullname">
                                                            <form:errors path="fullName" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label>Full Name:</label>
                                                        <form:input type="text"
                                                            class="form-control ${not empty errorFullname ? 'is-invalid' : ''}"
                                                            id="FullName" path="fullName" />

                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <c:set var="errorAddress">
                                                        <form:errors path="address" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <label>Address:</label>
                                                    <form:input type="text"
                                                        class="form-control ${not empty errorAddress ? 'is-invalid' : ''}"
                                                        id="address" path="address" />
                                                    ${errorAddress}
                                                </div>

                                                <div style="display: flex;">
                                                    <div>
                                                        <label class="form-label">Role:</label>
                                                        <form:select class="form-select" path="role.name" id="role">
                                                            <form:option value="ADMIN">ADMIN</form:option>
                                                            <form:option value="USER">USER</form:option>
                                                        </form:select>
                                                    </div>

                                                    <div>
                                                        <label for="avatarFile" class="form-label">Avatar:</label>
                                                        <input class="form-control" type="file" id="avatarFile"
                                                            accept=".png, .jpg, .jpeg" name="thebinhFile" />
                                                        <!-- vì ta không lưu path vì trong user không chứa thuộc tính file => để tên là name = "thebinhFile" rồi sau sẽ kết nối với controller -->
                                                    </div>

                                                </div>
                                                <br>
                                                <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                    id="avatarPreview" />
                                                <br>
                                                <div style="display: flex;justify-content: space-between;">
                                                    <button type="submit" class="btn btn-primary">Create</button>
                                                    <a href="/admin/user"><button
                                                            class="btn btn-success">Back</button></a>
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