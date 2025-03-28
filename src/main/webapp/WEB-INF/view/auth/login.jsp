<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html lang="vi">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Đăng nhập</title>
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

                        .create-account {
                            text-align: center;
                            color: #888;
                            cursor: pointer;
                        }
                    </style>
                </head>

                <body>
                    <div class="background"></div>
                    <div class="login-container">
                        <div class="login-left">
                            <div class="laptop-icon">
                                <img src="img/img-01.png" alt="">
                            </div>
                        </div>
                        <div class="login-right">
                            <h2>Login</h2>
                            <form method="post" action="/login">
                                <c:if test="${param.error != null}">
                                    <div class="my-2" style="color: red;">Invalid email or password.</div>
                                </c:if>
                                <!-- <c:if test="${empty pageContext.request.userPrincipal}">
                                    <div class="my-2" style="color: red;">You have successfully logged out.</div>
                                </c:if> -->
                                <c:if test="${param.logout != null}">
                                    <div class="my-2" style="color: green;">You have successfully logged out.</div>
                                </c:if>
                                <div class="input-group">
                                    <input type="email" id="email" placeholder="Email" name="username" />
                                </div>
                                <div class="input-group">
                                    <input type="password" id="password" placeholder="Password" name="password" />
                                </div>
                                <div>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                </div>
                                <!-- <button class="login-button">LOGIN</button> -->
                                <div class="input-group" style="text-align: center;">
                                    <button class="login-button">LOGIN</button>
                                </div>
                                <a href="/register" style="text-decoration: none;">
                                    <p class="create-account">Create your Account → Register here</p>
                                </a>
                            </form>

                        </div>
                    </div>
                </body>

                </html>