<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html lang="vi">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Đăng ký</title>
                    <style>
                        body {
                            margin: 0;
                            font-family: sans-serif;
                            display: flex;
                            justify-content: center;
                            align-items: center;
                            height: 100vh;
                            overflow: hidden;
                        }

                        .background {
                            position: fixed;
                            top: 0;
                            left: 0;
                            width: 100%;
                            height: 100%;
                            background: #9053c7;
                            background: -webkit-linear-gradient(-135deg, #c850c0, #4158d0);
                            background: -o-linear-gradient(-135deg, #c850c0, #4158d0);
                            background: -moz-linear-gradient(-135deg, #c850c0, #4158d0);
                            background: linear-gradient(-135deg, #c850c0, #4158d0);
                            z-index: -1;
                        }

                        .login-container {
                            display: flex;
                            background-color: #fff;
                            border-radius: 10px;
                            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                            width: 800px;
                            height: 500px;
                            overflow: hidden;
                        }

                        .login-left {
                            flex: 1;
                            display: flex;
                            justify-content: center;
                            align-items: center;
                        }

                        .login-left img {
                            max-width: 100%;
                            height: auto;
                        }

                        .login-right {
                            flex: 1;
                            padding: 40px;
                            display: flex;
                            flex-direction: column;
                            justify-content: center;
                        }

                        h2 {
                            text-align: center;
                            margin-bottom: 30px;
                            color: #333;
                        }

                        .input-group {
                            margin-bottom: 20px;
                        }

                        input {
                            width: calc(100% - 22px);
                            padding: 10px;
                            border: 1px solid #ddd;
                            border-radius: 5px;
                            font-size: 16px;
                        }

                        .login-button {
                            background-color: #4caf50;
                            color: white;
                            padding: 12px 20px;
                            border: none;
                            border-radius: 5px;
                            cursor: pointer;
                            font-size: 16px;
                            margin-bottom: 20px;
                        }

                        .login-button:hover {
                            background-color: #45a049;
                        }

                        .create-account {
                            text-align: center;
                            color: #888;
                            cursor: pointer;
                        }

                        @media (max-width: 768px) {
                            .login-container {
                                flex-direction: column;
                                width: 90%;
                                height: auto;
                            }

                            .login-left {
                                display: none;
                                /* Hide the left section on smaller screens */
                            }

                            .login-right {
                                padding: 20px;
                            }

                            h2 {
                                font-size: 24px;
                            }

                            input {
                                font-size: 14px;
                            }

                            .login-button {
                                font-size: 14px;
                                padding: 10px 15px;
                            }

                            .login-button {

                                background-color: #4caf50;
                                color: white;
                                padding: 12px 20px;
                                border: none;
                                border-radius: 5px;
                                cursor: pointer;
                                font-size: 16px;
                                margin-bottom: 20px;
                                display: block;
                                /* Chuyển nút thành phần tử block */
                                margin-left: auto;
                                /* Đẩy lề trái tự động */
                                margin-right: auto;
                                /* Đẩy lề phải tự động */
                                width: fit-content;
                                /* Hoặc một chiều rộng cố định nếu bạn muốn */
                            }
                        }

                        @media (max-width: 480px) {
                            h2 {
                                font-size: 20px;
                            }

                            .login-button {
                                font-size: 12px;
                                padding: 8px 10px;
                            }
                        }
                    </style>
                </head>

                <body>
                    <div class="background"></div>
                    <div class="login-container">
                        <div class="login-left">
                            <div class="laptop-icon">
                                <img src="img/img-01.png" alt="Laptop Icon">
                            </div>
                        </div>
                        <div class="login-right">
                            <h2>REGISTER</h2>
                            <form:form action="/register" method="post" modelAttribute="register">
                                <div class="row mb-3" style="display: flex; margin-bottom: 10px;">
                                    <div class="col-md-5" style="margin-right: 5px;">
                                        <div class="form-floating mb-3 mb-md-0">
                                            <c:set var="errorFirstName">
                                                <form:errors path="firstName" cssClass="invalid-feedback"
                                                    style="color: red;" />
                                            </c:set>
                                            <form:input type="text" placeholder="Enter your first name"
                                                id="inputFirstName" path="firstName"
                                                class="form-control ${not empty errorFirstName ? 'is-invalid' : ''}" />
                                            ${errorFirstName}
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <c:set var="errorLastName">
                                                <form:errors path="lastName" cssClass="invalid-feedback-hidden"
                                                    style="color: red;" />
                                            </c:set>
                                            <form:input
                                                class="form-control ${not empty errorLastName ? 'is-invalid' : ''}"
                                                type="text" placeholder="Enter your last name" id="inputLastName"
                                                path="lastName" />
                                            <div class="error-message">${errorLastName}</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="input-group">
                                    <c:set var="errorEmail">
                                        <form:errors path="email" cssClass="invalid-feedback" style="color: red;" />
                                    </c:set>
                                    <form:input type="email" id="email" placeholder="Email" path="email"
                                        class="form-control ${not empty errorEmail ? 'is-invalid' : ''}" />
                                    ${errorEmail}
                                </div>
                                <div class="input-group">
                                    <form:input type="password" id="password" placeholder="Password" path="password" />
                                </div>
                                <div class="input-group">
                                    <c:set var="errorPassword">
                                        <form:errors path="confirmPassword" cssClass="invalid-feedback"
                                            style="color: red;" />
                                    </c:set>
                                    <form:input type="password" id="password" placeholder="Confirm Password"
                                        class="form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                        path="confirmPassword" />
                                    ${errorPassword}
                                </div>

                                <div class="input-group" style="text-align: center;">
                                    <button class="login-button">REGISTER</button>
                                </div>
                                <a href="/login" style="text-decoration: none;">
                                    <p class="create-account">Already have account? → Login here</p>
                                </a>
                            </form:form>

                        </div>
                    </div>
                </body>

                </html>