<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
                <%@ page session="true" %>

                    <aside class="sidenav-custom shadow" id="sidenav-main">
                        <div class="d-flex flex-column justify-content-between h-100">

                            <!-- Logo & Brand -->
                            <div>
                                <div class="sidenav-header mb-3 text-center">
                                    <a class="navbar-brand m-0 d-flex align-items-center justify-content-center"
                                        href="/" target="_blank">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="32px" height="32px"
                                            fill="currentColor" class="bi bi-tablet" viewBox="0 0 16 16">
                                            <path
                                                d="M12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z">
                                            </path>
                                            <path d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2"></path>
                                        </svg>
                                        <span class="ms-2 fw-bold fs-5" style="margin-top: 20px;">SmartphoneShop</span>
                                    </a>
                                </div>
                                <hr class="horizontal dark mt-0 mb-3">

                                <!-- Menu -->
                                <ul class="navbar-nav flex-column">
                                    <li class="nav-item mb-2">
                                        <a class="nav-link-custom ${pageContext.request.requestURI == '/admin' ? 'active' : ''}"
                                            href="/admin">
                                            <i class="bi bi-speedometer2 me-2"></i>
                                            Dashboard
                                        </a>
                                    </li>
                                    <li class="nav-item mb-2">
                                        <a class="nav-link-custom ${pageContext.request.requestURI.startsWith('/admin/user') ? 'active' : ''}"
                                            href="/admin/user">
                                            <i class="bi bi-people me-2"></i>
                                            User
                                        </a>
                                    </li>
                                    <li class="nav-item mb-2">
                                        <a class="nav-link-custom ${pageContext.request.requestURI.startsWith('/admin/product') ? 'active' : ''}"
                                            href="/admin/product">
                                            <i class="bi bi-phone me-2"></i>
                                            Product
                                        </a>
                                    </li>
                                    <li class="nav-item mb-2">
                                        <a class="nav-link-custom ${pageContext.request.requestURI.startsWith('/admin/order') ? 'active' : ''}"
                                            href="/admin/order">
                                            <i class="bi bi-receipt me-2"></i>
                                            Order
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <!-- User Info & Actions -->
                            <div class="mt-4 pb-2">
                                <div class="d-flex flex-column align-items-center">
                                    <div class="avatar-wrapper mb-2">
                                        <img src="/images/avatar/${sessionScope.avt}" alt="Avatar"
                                            class="rounded-circle border border-2 border-light"
                                            style="width: 80px; height: 80px; object-fit: cover;">
                                    </div>
                                    <div class="fw-bold text-white mb-1" style="font-size: 1.08rem;">
                                        <c:out value="${sessionScope.fullName}" />
                                    </div>
                                    <div class="mb-2 w-100 text-center">

                                        <a href="/order-history"
                                            class="text-decoration-none text-secondary small d-block"><i
                                                class="bi bi-clock-history me-1"></i>Lịch sử mua hàng</a>
                                    </div>
                                    <form action="/logout" method="post" class="w-100 text-center mt-2">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <button type="submit"
                                            class="btn btn-outline-light btn-sm w-75 rounded-pill mt-1">
                                            <i class="bi bi-box-arrow-right me-1"></i>Đăng xuất
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </aside>

                    <style>
                        .sidenav-custom {
                            background: #23272b;
                            color: #fff;
                            min-height: 100vh;
                            min-width: 250px;
                            max-width: 270px;
                            border-radius: 24px;
                            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.25);
                            position: fixed;
                            top: 24px;
                            left: 24px;
                            z-index: 1040;
                            display: flex;
                            flex-direction: column;
                            padding: 0 0 0 0;
                        }

                        .sidenav-custom .navbar-brand span {
                            color: #fff !important;
                            letter-spacing: 1px;
                        }

                        .sidenav-custom .nav-link-custom {
                            display: flex;
                            align-items: center;
                            padding: 10px 22px;
                            color: #b0b8c1;
                            border-radius: 12px;
                            font-size: 1rem;
                            font-weight: 500;
                            margin-bottom: 4px;
                            transition: background 0.2s, color 0.2s;
                            text-decoration: none;
                        }

                        .sidenav-custom .nav-link-custom.active,
                        .sidenav-custom .nav-link-custom:hover {
                            background: #0d6efd;
                            color: #fff !important;
                        }

                        .sidenav-custom .nav-link-custom i {
                            font-size: 1.2rem;
                        }

                        .sidenav-custom .avatar-wrapper {
                            background: #181a1b;
                            border-radius: 50%;
                            padding: 4px;
                            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.18);
                        }

                        .sidenav-custom .rounded-circle {
                            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
                        }

                        .sidenav-custom .btn-outline-light {
                            border-color: #fff;
                            color: #fff;
                            font-weight: 500;
                            letter-spacing: 0.5px;
                        }

                        .sidenav-custom .btn-outline-light:hover {
                            background: #fff;
                            color: #23272b;
                        }

                        .sidenav-custom hr.horizontal {
                            border-top: 1px solid #343a40;
                            margin: 0 18px 18px 18px;
                        }
                    </style>