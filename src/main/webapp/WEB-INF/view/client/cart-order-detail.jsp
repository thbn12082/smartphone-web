<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <style>
                    body {
                        background: linear-gradient(to right, #6a11cb, #2575fc);
                        /* Gradient background */
                        font-family: sans-serif;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        min-height: 100vh;
                        margin: 0;
                    }

                    .container {
                        width: 90%;
                        /* Điều chỉnh chiều rộng container */
                        max-width: 1200px;
                        padding: 20px;
                    }

                    .card {
                        border-radius: 15px;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                        margin-bottom: 20px;
                    }

                    .card-header {
                        background-color: #f8f9fa;
                        border-bottom: 1px solid #dee2e6;
                        padding: 15px;
                        border-top-left-radius: 15px;
                        border-top-right-radius: 15px;
                    }

                    .card-body {
                        padding: 20px;
                    }

                    .row {
                        display: flex;
                        flex-wrap: wrap;
                        margin-bottom: 20px;
                    }

                    .col-md-8 {
                        flex: 0 0 66.666667%;
                        max-width: 66.666667%;
                        padding-right: 15px;
                        padding-left: 15px;
                    }

                    .col-md-4 {
                        flex: 0 0 33.333333%;
                        max-width: 33.333333%;
                        padding-right: 15px;
                        padding-left: 15px;
                    }

                    .col-lg-3 {
                        flex: 0 0 25%;
                        max-width: 25%;
                        padding-right: 15px;
                        padding-left: 15px;
                    }

                    .col-lg-5 {
                        flex: 0 0 41.666667%;
                        max-width: 41.666667%;
                        padding-right: 15px;
                        padding-left: 15px;
                    }

                    .col-lg-4 {
                        flex: 0 0 33.333333%;
                        max-width: 33.333333%;
                        padding-right: 15px;
                        padding-left: 15px;
                    }

                    .bg-image {
                        border-radius: 10px;
                        overflow: hidden;
                    }

                    .bg-image img {
                        width: 100%;
                        height: auto;
                        display: block;
                    }

                    .d-flex {
                        display: flex;
                        align-items: center;
                    }

                    .justify-content-between {
                        justify-content: space-between;
                    }

                    .mb-4 {
                        margin-bottom: 1.5rem;
                    }

                    .btn {
                        border-radius: 8px;
                        padding: 10px 20px;
                        font-size: 1rem;
                        cursor: pointer;
                        border: none;
                    }

                    .btn-primary {
                        background-color: #007bff;
                        color: white;
                    }

                    .btn-danger {
                        background-color: #dc3545;
                        color: white;
                    }

                    .btn-sm {
                        padding: 5px 10px;
                        font-size: 0.875rem;
                    }

                    .btn-lg {
                        padding: 15px 30px;
                        font-size: 1.25rem;
                        width: 100%;
                    }

                    .list-group-item {
                        padding: 10px 15px;
                        border: none;
                    }

                    .list-group-flush .list-group-item:last-child {
                        margin-bottom: 0;
                    }

                    .text-start {
                        text-align: left;
                    }

                    .text-md-center {
                        text-align: center;
                    }

                    .me-2 {
                        margin-right: 0.5rem;
                    }

                    /* Custom styles for quantity buttons */
                    .d-flex.mb-4 button {
                        border-radius: 50%;
                        width: 35px;
                        height: 35px;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        padding: 0;
                    }

                    .d-flex.mb-4 input[type="number"] {
                        width: 60px;
                        text-align: center;
                        border: 1px solid #ced4da;
                        border-radius: 5px;
                        padding: 5px;
                        margin: 0 5px;
                    }

                    /* Custom styles for icons */
                    .fas {
                        font-size: 1rem;
                    }

                    /* Custom styles for images */
                    .card-body img {
                        border-radius: 5px;
                    }
                </style>
            </head>

            <body>
                <section class="h-100 gradient-custom">
                    <div class="container py-5">
                        <div class="row d-flex justify-content-center my-4">
                            <div style="display: flex;">
                                <div class="col-md-8">
                                    <div class="card mb-4">
                                        <div class="card-header py-3">
                                            <h5 class="mb-0" style="text-align: center; font-size: 26px;">Cart - 2 items
                                            </h5>
                                        </div>
                                        <div class="card-body" style="background-color: #ced4da;">
                                            <!-- Single item -->
                                            <div class="row">
                                                <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                                                    <!-- Image -->
                                                    <div class="bg-image hover-overlay hover-zoom ripple rounded"
                                                        data-mdb-ripple-color="light">
                                                        <img src="https://cdn2.cellphones.com.vn/x/media/catalog/product/s/s/ss-s24-ultra-xam-222.png"
                                                            class="w-100" alt="Blue Jeans Jacket" />
                                                        <a href="#!">
                                                            <div class="mask"
                                                                style="background-color: rgba(251, 251, 251, 0.2)">
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <!-- Image -->
                                                </div>

                                                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 d-flex"
                                                    style="display: flex; justify-content: space-between;">
                                                    <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                                                        <!-- Data -->
                                                        <p><strong> Samsung S24 Ultra</strong></p>
                                                        <p>Color: blue</p>
                                                        <p>Size: M</p>

                                                        <!-- Data -->
                                                    </div>

                                                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 d-flex"
                                                        style="display: flex; justify-content: space-between;">
                                                        <!-- Price -->
                                                        <p>
                                                            <strong>$17.99</strong>

                                                        </p><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                            height="16" fill="currentColor" class="bi bi-archive"
                                                            viewBox="0 0 16 16">
                                                            <path
                                                                d="M0 2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 12.5V5a1 1 0 0 1-1-1zm2 3v7.5A1.5 1.5 0 0 0 3.5 14h9a1.5 1.5 0 0 0 1.5-1.5V5zm13-3H1v2h14zM5 7.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5" />
                                                        </svg>
                                                        <!-- Price -->
                                                    </div>
                                                </div>

                                            </div>
                                            <!-- Single item -->

                                            <hr class="my-4" />

                                            <!-- Single item -->
                                            <div class="row">
                                                <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                                                    <!-- Image -->
                                                    <div class="bg-image hover-overlay hover-zoom ripple rounded"
                                                        data-mdb-ripple-color="light">
                                                        <img src="https://clickbuy.com.vn/uploads/pro/iphone-16-8975-lthx-300x300-217852.jpg"
                                                            class="w-100" />
                                                        <a href="#!">
                                                            <div class="mask"
                                                                style="background-color: rgba(251, 251, 251, 0.2)">
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <!-- Image -->
                                                </div>

                                                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 d-flex"
                                                    style="display: flex; justify-content: space-between;">
                                                    <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                                                        <!-- Data -->
                                                        <p><strong>Iphone 13</strong></p>
                                                        <p>Color: red</p>
                                                        <p>Size: M</p>


                                                        <!-- Data -->
                                                    </div>

                                                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 d-flex"
                                                        style="display: flex; justify-content: space-between;">


                                                        <!-- Price -->
                                                        <p class="text-start text-md-center">
                                                            <strong>$17.99</strong>

                                                        </p>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                            fill="currentColor" class="bi bi-archive"
                                                            viewBox="0 0 16 16">
                                                            <path
                                                                d="M0 2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 12.5V5a1 1 0 0 1-1-1zm2 3v7.5A1.5 1.5 0 0 0 3.5 14h9a1.5 1.5 0 0 0 1.5-1.5V5zm13-3H1v2h14zM5 7.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5" />
                                                        </svg>
                                                        <!-- Price -->
                                                    </div>
                                                </div>

                                            </div>
                                            <!-- Single item -->
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card mb-4">
                                        <div class="card-header py-3">
                                            <h5 class="mb-0 " style="text-align: center; font-size: 26px;">Summary</h5>
                                        </div>
                                        <div class="card-body" style="background-color: #ced4da;">
                                            <ul class=" list-group list-group-flush">
                                                <li
                                                    class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                                                    Products
                                                    <span>$53.98</span>
                                                </li>
                                                <li
                                                    class="list-group-item d-flex justify-content-between align-items-center px-0">
                                                    Shipping
                                                    <span>Gratis</span>
                                                </li>
                                                <li
                                                    class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                                    <div>
                                                        <strong>Total amount</strong>
                                                        <strong>
                                                            <p class="mb-0">(including VAT)</p>
                                                        </strong>
                                                    </div>
                                                    <span><strong>$53.98</strong></span>
                                                </li>
                                            </ul>

                                            <button type="button" data-mdb-button-init data-mdb-ripple-init
                                                class="btn btn-primary btn-lg btn-block">
                                                Go to checkout
                                            </button>
                                            <a href="/" style="text-decoration: none;">
                                                <button type="button" data-mdb-button-init data-mdb-ripple-init
                                                    class="btn btn-primary btn-lg btn-block" style="margin-top: 10px;">
                                                    Back to dashboard
                                                </button>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </section>
            </body>

            </html>