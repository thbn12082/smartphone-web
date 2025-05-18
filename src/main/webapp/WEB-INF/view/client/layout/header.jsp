<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
                <%@ page session="true" %>
                    <!-- <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav"> -->
                    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav"
                        style="background-color: whitesmoke;">
                        <div class="container">
                            <a href="/" style="text-decoration: none;">
                                <p style="color: black; font-size: 30px;">Smartphone shop</p>
                            </a>
                            <c:if test="${not empty pageContext.request.userPrincipal}">
                                <a href="/products" style="text-decoration: none;color: black; font-size: 19px;">All
                                    Products</a>
                                <div style="display: flex;">
                                    <div>
                                        <p
                                            style="font-weight: 300; font-size: 15px;margin-right: 37px;margin-top: 25px;color: black;">
                                            Welcome,
                                            <c:out value="${sessionScope.fullName}" />
                                        </p>

                                    </div>
                                    <a href="/cart" class="position-relative me-4 my-auto" style="color: gray;">
                                        <i class="fa fa-shopping-bag fa-2x"></i>
                                        <span
                                            class="position-absolute bg-dark rounded-circle d-flex align-items-center justify-content-center text-white px-1"
                                            style="top: -5px; left: 15px; height: 20px; min-width: 20px;">${sessionScope.sum}</span>
                                    </a>

                                    <div class="dropdown my-auto">
                                        <a href="#" class="dropdown" role="button" id="dropdownMenuLink"
                                            data-bs-toggle="dropdown" aria-expanded="false" data-bs-toggle="dropdown"
                                            aria-expanded="false" style="color: gray;">
                                            <i class="fas fa-user fa-2x"></i>
                                        </a>
                                        <ul class="dropdown-menu dropdown-menu-end p-4" aria-
                                            labelledby="dropdownMenuLink">
                                            <li class="d-flex align-items-center flex-column" style="min-width: 300px;">
                                                <img style="width: 150px; height: 150px; border-radius: 50%; overflow: hidden;"
                                                    src="/images/avatar/${sessionScope.avt}" />
                                                <div class="text-center my-3">
                                                    <c:out value="${sessionScope.fullName}" />
                                                </div>
                                            </li>
                                            <li><a class="dropdown-item" href="#">Quản lý tài khoản</a></li>
                                            <li><a class="dropdown-item" href="/order-history">Lịch sử mua hàng</a></li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li>
                                                <form action="/logout" method="post">

                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />

                                                    <button class="dropdown-item" type="submit">Đăng xuất</button>
                                                </form>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${empty pageContext.request.userPrincipal}">
                                <a href="/login" class="position-relative me-4 my-auto"
                                    style="color: rgb(6, 21, 108);text-decoration: none; padding:10px 20px; border-radius: 10px; font-size: 15px;background-color: burlywood;">
                                    Đăng nhập
                                </a>
                            </c:if>



                        </div>
                    </nav>