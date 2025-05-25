<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <title>
                        TheBinh - Create User
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
                        /* Reset và Input chung */
                        input,
                        select {
                            width: 100%;
                            height: 48px;
                            padding: 12px 18px;
                            font-size: 18px;
                            border-radius: 8px;
                            background: #353a40;
                            border: 1px solid #555;
                            color: #f8f9fa;
                        }

                        /* Style cơ bản cho trang */
                        body {
                            background: linear-gradient(135deg, #232526, #414345);
                            font-family: 'Open Sans', sans-serif;
                            color: #f8f9fa;
                            margin: 0;
                            padding: 0;
                            margin-left: 150px;
                        }

                        .content {
                            padding: 2rem;
                        }

                        .inner-content {
                            margin-top: 50px;
                            max-width: 1000px;
                            margin: auto;
                            background: rgba(0, 0, 0, 0.6);
                            padding: 2rem;
                            border-radius: 10px;
                            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
                        }

                        h1 {
                            text-align: center;
                            color: antiquewhite;
                            margin-bottom: 1rem;
                        }

                        hr {
                            border-top: 1px solid #f8f9fa;
                            margin-bottom: 1.5rem;
                        }

                        .form-group {
                            margin-bottom: 1rem;
                        }

                        .form-label {
                            font-weight: bold;
                            margin-bottom: 0.5rem;
                            display: block;
                        }

                        .invalid-feedback {
                            color: #ff6b6b;
                            font-size: 0.9em;
                        }

                        /* Row với 2 cột */
                        .form-row {
                            display: flex;
                            gap: 20px;
                            margin-bottom: 1rem;
                        }

                        .form-col {
                            flex: 1;
                        }

                        /* Button styles */
                        .btn {
                            border-radius: 8px;
                            transition: all 0.25s ease;
                            padding: 0.5rem 1rem;
                        }

                        .btn:hover,
                        .btn:focus {
                            transform: scale(1.02);
                        }

                        .btn-primary {
                            background-color: #1E90FF;
                            border: none;
                            color: #fff;
                        }

                        .btn-success {
                            background-color: #198754;
                            border: none;
                            color: #fff;
                            text-decoration: none;
                            text-align: center;
                            padding: 0.5rem 1rem;
                        }

                        .btn-success:hover {
                            opacity: 0.9;
                        }

                        @media (max-width: 768px) {
                            .form-row {
                                flex-direction: column;
                            }
                        }
                    </style>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                    <script>
                        $(document).ready(() => {
                            const avatarFile = $("#avatarFile");
                            avatarFile.change(function (e) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#avatarPreview").attr("src", imgURL).css("display", "block");
                            });
                        });
                    </script>
                </head>

                <body>

                    <jsp:include page="../layout/sidebar.jsp" />
                    <main>
                        <div class="content">
                            <div class="inner-content">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-3"></div>
                                        <div class="col-xl-6">
                                            <h1>Create a User</h1>
                                            <hr>
                                        </div>
                                        <div class="col-xl-3"></div>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-3"></div>
                                        <div class="col-xl-6">
                                            <form:form action="/admin/user/create" method="post"
                                                modelAttribute="newUser" enctype="multipart/form-data">
                                                <!-- Row 1: Email & Password -->
                                                <div class="form-row">
                                                    <div class="form-col">
                                                        <div class="form-group">
                                                            <c:set var="errorEmail">
                                                                <form:errors path="email" cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="exampleInputEmail1" class="form-label">Email
                                                                address</label>
                                                            <form:input type="email"
                                                                class="form-control ${not empty errorEmail ? 'is-invalid' : ''}"
                                                                id="exampleInputEmail1" placeholder="Enter email"
                                                                path="email" />
                                                            ${errorEmail}
                                                        </div>
                                                    </div>
                                                    <div class="form-col">
                                                        <div class="form-group">
                                                            <c:set var="errorPassword">
                                                                <form:errors path="password"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="exampleInputPassword1"
                                                                class="form-label">Password
                                                            </label>
                                                            <form:input type="password"
                                                                class="form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                                                id="exampleInputPassword1" placeholder="Password"
                                                                path="password" />
                                                            ${errorPassword}
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Row 2: Phone Number & Full Name -->
                                                <div class="form-row">
                                                    <div class="form-col">
                                                        <div class="form-group">
                                                            <c:set var="phoneError">
                                                                <form:errors path="phone" cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label class="form-label">Phone Number:</label>
                                                            <form:input type="text"
                                                                class="form-control ${not empty phoneError ? 'is-invalid' : ''}"
                                                                id="PhoneNumber" path="phone" />
                                                            ${phoneError}
                                                        </div>
                                                    </div>
                                                    <div class="form-col">
                                                        <div class="form-group">
                                                            <c:set var="errorFullname">
                                                                <form:errors path="fullName"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label class="form-label">Full Name:</label>
                                                            <form:input type="text"
                                                                class="form-control ${not empty errorFullname ? 'is-invalid' : ''}"
                                                                id="FullName" path="fullName" />
                                                            ${errorFullname}
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Row 3: Address (Full width) -->
                                                <div class="form-group">
                                                    <c:set var="errorAddress">
                                                        <form:errors path="address" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <label class="form-label">Address:</label>
                                                    <form:input type="text"
                                                        class="form-control ${not empty errorAddress ? 'is-invalid' : ''}"
                                                        id="address" path="address" />
                                                    ${errorAddress}
                                                </div>
                                                <!-- Row 4: Role & Avatar -->
                                                <div class="form-row">
                                                    <div class="form-col">
                                                        <div class="form-group">
                                                            <label class="form-label">Role:</label>
                                                            <form:select class="form-select" path="role.name" id="role">
                                                                <form:option value="ADMIN">ADMIN</form:option>
                                                                <form:option value="USER">USER</form:option>
                                                            </form:select>
                                                        </div>
                                                    </div>
                                                    <div class="form-col">
                                                        <div class="form-group">
                                                            <label for="avatarFile" class="form-label">Avatar:</label>
                                                            <input class="form-control" type="file" id="avatarFile"
                                                                accept=".png, .jpg, .jpeg" name="thebinhFile" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <br>
                                                <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                    id="avatarPreview" />
                                                <br>
                                                <!-- Row 5: Buttons -->
                                                <div
                                                    style="display: flex; justify-content: space-between; margin-top: 20px;">
                                                    <button type="submit" class="btn btn-primary">Create</button>
                                                    <a href="/admin/user" class="btn btn-success">Back</a>
                                                </div>
                                            </form:form>
                                        </div>
                                        <div class="col-xl-3"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>

                    <script src="/js/bootstrap.min.js"></script>
                    <script src="/js/dashboard.js"></script>
                </body>

                </html>