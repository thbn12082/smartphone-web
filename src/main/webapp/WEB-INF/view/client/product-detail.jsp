<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

            <body id="page-top">

                <jsp:include page="layout/header.jsp" />
                <br>
                <div class="container" style="display: flex;">
                    <div class="container mt-5">
                        <div class="row">
                            <div class="col-md-12 col-lg-5" style="margin-top: 2%;">
                                <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
                                    <div class="carousel-inner" role="listbox">
                                        <div class="carousel-item rounded active">
                                            <img src="/client/img/img1.png"
                                                class="img-fluid w-100 h-100 bg-secondary rounded" alt="First slide">

                                        </div>
                                        <div class="carousel-item rounded">
                                            <img src="/client/img/img2.png" class="img-fluid w-100 h-100 rounded"
                                                alt="Second slide">
                                        </div>
                                    </div>
                                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselId"
                                        data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button" data-bs-target="#carouselId"
                                        data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- Product Details -->
                        <div class="col-md-6">
                            <h2 class="mb-3">Premium Wireless Headphones</h2>
                            <p class="text-muted mb-4">SKU: WH1000XM4</p>
                            <div class="mb-3">
                                <span class="h4 me-2">$349.99</span>
                                <span class="text-muted"><s>$399.99</s></span>
                            </div>
                            <div class="mb-3">
                                <i class="bi bi-star-fill text-warning"></i>
                                <i class="bi bi-star-fill text-warning"></i>
                                <i class="bi bi-star-fill text-warning"></i>
                                <i class="bi bi-star-fill text-warning"></i>
                                <i class="bi bi-star-half text-warning"></i>
                                <span class="ms-2">4.5 (120 reviews)</span>
                            </div>
                            <p class="mb-4">Experience premium sound quality and industry-leading noise cancellation
                                with
                                these
                                wireless
                                headphones. Perfect for music lovers and frequent travelers.</p>
                            <div class="mb-4">
                                <h5>Color:</h5>
                                <div class="btn-group" role="group" aria-label="Color selection">
                                    <input type="radio" class="btn-check" name="color" id="black" autocomplete="off"
                                        checked>
                                    <label class="btn btn-outline-dark" for="black">Black</label>
                                    <input type="radio" class="btn-check" name="color" id="silver" autocomplete="off">
                                    <label class="btn btn-outline-secondary" for="silver">Silver</label>
                                    <input type="radio" class="btn-check" name="color" id="blue" autocomplete="off">
                                    <label class="btn btn-outline-primary" for="blue">Blue</label>
                                </div>
                            </div>
                            <div class="mb-4">
                                <label for="quantity" class="form-label">Quantity:</label>
                                <input type="number" class="form-control" id="quantity" value="1" min="1"
                                    style="width: 80px;">
                            </div>
                            <button class="btn btn-primary btn-lg mb-3 me-2">
                                <i class="bi bi-cart-plus"></i> Add to Cart
                            </button>
                            <button class="btn btn-outline-secondary btn-lg mb-3">
                                <i class="bi bi-heart"></i> Add to Wishlist
                            </button>
                            <div class="mt-4">
                                <h5>Key Features:</h5>
                                <ul>
                                    <li>Industry-leading noise cancellation</li>
                                    <li>30-hour battery life</li>
                                    <li>Touch sensor controls</li>
                                    <li>Speak-to-chat technology</li>
                                </ul>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-4 col-xl-3" style="margin-top: 9%;">
                        <div class=" row g-4 fruite">
                            <div class="col-lg-12">

                                <div class="mb-4">
                                    <h4>Categories</h4>
                                    <ul class="list-unstyled fruite-categorie">
                                        <li>
                                            <div class="d-flex justify-content-between fruite-name">
                                                <a href="#"><i class="fas fa-apple-alt me-2"></i>Apple</a>
                                                <span>(3)</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex justify-content-between fruite-name">
                                                <a href="#"><i class="fas fa-apple-alt me-2"></i>Dell</a>
                                                <span>(5)</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex justify-content-between fruite-name">
                                                <a href="#"><i class="fas fa-apple-alt me-2"></i>Asus</a>
                                                <span>(2)</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex justify-content-between fruite-name">
                                                <a href="#"><i class="fas fa-apple-alt me-2"></i>HP</a>
                                                <span>(8)</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex justify-content-between fruite-name">
                                                <a href="#"><i class="fas fa-apple-alt me-2"></i>Acer</a>
                                                <span>(5)</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>



                <jsp:include page="layout/footer.jsp" />

                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
                <script>
                    function changeImage(event, src) {
                        document.getElementById('mainImage').src = src;
                        document.querySelectorAll('.thumbnail').forEach(thumb => thumb.classList.remove('active'));
                        event.target.classList.add('active');
                    }
                </script>
            </body>

            </html>