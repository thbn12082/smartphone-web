<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!-- <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav"> -->
            <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav"
                style="background-color: whitesmoke;">
                <div class="container">
                    <a href="/" style="text-decoration: none;">
                        <p style="color: black; font-size: 30px;">Smartphone shop</p>
                    </a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                        aria-label="Toggle navigation">
                        Menu
                        <i class="fas fa-bars ms-1"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                            <li class="nav-item" style="color: black;"><a href="/test6"
                                    style="text-decoration: none;color: black;">Đơn hàng của tôi </a></li>

                            <li class="nav-item"><a href="/test" style="text-decoration: none;color: black;">San
                                    pham</a></li>



                            <li class="nav-item" style="color: black;"><a href="/test3"
                                    style="text-decoration: none; margin-left: 10px;color: black;">Login</a></li>


                        </ul>
                    </div>
                </div>
            </nav>