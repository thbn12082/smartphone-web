<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
                <%@ page session="true" %>

                    <aside
                        class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 ps"
                        id="sidenav-main">

                        <div style="display: flex; flex-direction: column; justify-content: space-between;">

                            <div>
                                <div class="sidenav-header">
                                    <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
                                        aria-hidden="true" id="iconSidenav"></i>
                                    <a class="navbar-brand m-0" href="/" target="_blank">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="26px"
                                            fill="currentColor" class="bi bi-tablet" viewBox="0 0 16 16">
                                            <path
                                                d="M12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z">
                                            </path>
                                            <path d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2"></path>
                                        </svg>
                                        <span class="ms-1 font-weight-bold">TheBinh</span>
                                    </a>
                                </div>
                                <hr class="horizontal dark mt-0">

                                <div style="display: flex; flex-direction: column; justify-content:space-between ;">
                                    <ul class="navbar-nav">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="/admin">
                                                <div
                                                    class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                                                    <i class="ni ni-tv-2 text-dark text-sm opacity-10"></i>
                                                </div>
                                                <span class="nav-link-text ms-1">Dashboard</span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="/admin/user">
                                                <div
                                                    class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                                                    <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
                                                </div>
                                                <span class="nav-link-text ms-1">User</span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="/admin/product">
                                                <div
                                                    class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                                                    <i class="ni ni-world-2 text-dark text-sm opacity-10"></i>
                                                </div>

                                                <span class="nav-link-text ms-1">Product</span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link " href="/admin/order">
                                                <div
                                                    class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                                                    <i class="ni ni-credit-card text-dark text-sm opacity-10"></i>
                                                </div>
                                                <span class="nav-link-text ms-1">Order</span>
                                            </a>
                                        </li>

                                    </ul>


                                </div>
                            </div>

                            <div>
                                <div class="d-flex align-items-center flex-column">
                                    <img style="width: 150px; height: 150px;border: 2px solid black; border-radius: 10px; overflow: hidden;"
                                        src="/images/avatar/${sessionScope.avt}" />
                                    <div class="text-center my-3">
                                        <c:out value="${sessionScope.fullName}" />
                                    </div>

                                    <div><a href="#">Quản lý tài khoản</a></div>
                                    <div><a href="/order-history">Lịch sử mua hàng</a></div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div>
                                        <form action="/logout" method="post">

                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                                            <button type="submit"
                                                style="background-color: antiquewhite;  border-radius: 10px; color: black;">Đăng
                                                xuất</button>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </aside>

                    <main class="main-content position-relative border-radius-lg ps">
                        <!-- Navbar -->
                        </div>
                        <!-- End Navbar -->