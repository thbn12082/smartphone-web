<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Dashboard</title>
                <!-- Favicon-->
                <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
                <!-- Font Awesome icons (free version)-->
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <!-- Google fonts-->
                <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"
                    type="text/css" />
                <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet"
                    type="text/css" />
                <!-- Core theme CSS (includes Bootstrap)-->
                <link href="/client/css/homepage.css" rel="stylesheet" />
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Inria+Serif:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&family=Island+Moments&display=swap"
                    rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Jacques+Francois+Shadow&display=swap"
                    rel="stylesheet">

                <style>
                    .rating-box {
                        background-color: #fff9c4;
                        /* Màu nền khung */
                        border: 2px solid #ffeb3b;
                        /* Viền khung */
                        border-radius: 10px;
                        padding: 20px;
                        text-align: center;
                        width: 400px;
                        /* Độ rộng khung */
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                    }

                    .question {
                        font-size: 18px;
                        margin-bottom: 20px;
                    }

                    .options {
                        display: flex;
                        justify-content: space-around;
                    }

                    .option {
                        background-color: transparent;
                        border: none;
                        font-size: 16px;
                        cursor: pointer;
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        outline: none;
                    }

                    .emoji {
                        font-size: 30px;
                        margin-bottom: 5px;
                    }

                    .label {
                        color: #ff9800;
                        /* Màu chữ "Hài lòng" và "Không hài lòng" */
                    }

                    .check {
                        font-family: 'Island Moments', cursive;
                        font-size: 57px;
                    }

                    .BannerTheme_sliderWrap__csOTb .container img {
                        position: absolute;
                        top: 50%;
                        left: 50%;
                        transform: translate(-50%, -50%);
                        z-index: 2;
                    }

                    .overlap-container {
                        position: relative;
                        width: 100%;
                        /* Ensure the container takes up the full width */
                        height: auto;
                        /* Adjust height based on the background image */
                    }

                    .overlap-container img:first-child {
                        position: relative;
                        /* Background image remains in its normal flow */
                        width: 100%;
                        /* Ensure the background image spans the container */
                        height: auto;
                    }

                    .overlap-container .foreground-img {
                        position: absolute;
                        top: 50%;
                        left: 50%;
                        transform: translate(-50%, -50%);
                        /* Center the foreground image */
                        z-index: 2;
                        /* Ensure it overlaps the background */
                    }

                    .carousel-item {
                        position: relative;
                    }

                    .card-content {
                        position: absolute;
                        bottom: 20px;
                        left: 20px;
                        background: rgba(0, 0, 0, 0.5);
                        color: white;
                        padding: 20px;
                        border-radius: 8px;
                    }

                    .card-content h3,
                    .card-content p,
                    .card-content a {
                        margin: 0;
                        padding: 5px 0;
                    }

                    .card-content a {
                        color: #ffcc00;
                        text-decoration: underline;
                    }

                    .carousel-item img {
                        height: 400px;
                        object-fit: cover;
                    }

                    @media (max-width: 768px) {
                        .check {
                            font-size: 36px;
                        }

                        .BannerTheme_sliderWrap__csOTb .container img {
                            transform: translate(-50%, -50%);
                            width: 80%;
                        }
                    }

                    .my-element {
                        font-family: "Jacques Francois Shadow", serif;
                        font-weight: 400;
                        font-style: normal;
                    }

                    .card-img-top {
                        width: 100%;
                        /* Đảm bảo ảnh chiếm toàn bộ chiều rộng thẻ cha */
                        height: 300px;
                        /* Đặt chiều cao mong muốn (điều chỉnh theo nhu cầu) */
                        object-fit: cover;
                        /* Cắt ảnh để lấp đầy vùng chứa, giữ nguyên tỷ lệ khung hình */
                    }

                    .card-text {
                        max-height: 50px;
                        /* Ví dụ: giới hạn chiều cao tối đa là 50px (điều chỉnh theo nhu cầu) */
                        overflow: hidden;
                    }
                </style>
            </head>

            <body id="page-top">
                <!-- Navigation -->
                <jsp:include page="layout/header.jsp" />

                <!-- Masthead -->
                <div class="BannerTheme_sliderWrap__csOTb" style="margin-top: 15vh;">
                    <div class="container">
                        <h1>Smartphoneshop</h1>
                        <div style="display: flex;">
                            <h2 class="check" style="font-weight: 100;">Mua sắm thông minh tiết kiệm thời gian cùng
                            </h2>
                            <h2 style="margin-left: 5px; font-size: 56px;" class="my-element"> Smartphoneshop</h2>
                        </div>
                    </div>
                    <a class="BannerTheme_sliderItem__0Yheb BannerTheme_fadeIn__f2GRS" href="/" target="_blank"
                        rel="dofollow" draggable="false">
                        <div class="bg-[length:100%_auto] bg-[center_top] bg-no-repeat BannerTheme_sliderBg__lb4oh"
                            style="background-color:#F3F4F6 !important">
                            <div class="overlap-container">
                                <div class="overlap-container">
                                    <img alt="background" fetchpriority="high" class="img-fluid" decoding="async"
                                        src="https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:quality(100)/desk_header_bg_2_fc50affb12.png">
                                    <img alt="foreground" class="foreground-img img-fluid"
                                        src="https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:quality(100)/desk_header_11f5decdf9.png">
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="container my-4">
                    <div class="row g-4 fruite">
                        <div class="col-12 col-md-4">
                            <div class="row g-4">
                                <div class="col-12" id="factoryFilter">
                                    <div class="mb-2"><b>Hãng sản xuất</b></div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="factory-1" value="Apple">
                                        <label class="form-check-label" for="factory-1">Apple</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="factory-2" value="SamSung">
                                        <label class="form-check-label" for="factory-2">Samsung</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="factory-3" value="Xiaomi">
                                        <label class="form-check-label" for="factory-3">Xiaomi</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="factory-4" value="Oppo">
                                        <label class="form-check-label" for="factory-4">Oppo</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="factory-5" value="Huawei">
                                        <label class="form-check-label" for="factory-5">Huawei</label>
                                    </div>


                                </div>
                                <div class="col-12" id="targetFilter">
                                    <div class="mb-2"><b>Mục đích sử dụng</b></div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="target-1" value="GAMING">
                                        <label class="form-check-label" for="target-1">Gaming</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="target-2" value="Work">
                                        <label class="form-check-label" for="target-2">Work</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="target-3" value="Study">
                                        <label class="form-check-label" for="target-3">Study</label>
                                    </div>
                                    <!-- <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="target-4" value="MONG-NHE">
                                        <label class="form-check-label" for="target-4">Mỏng nhẹ</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="target-5"
                                            value="DOANH-NHAN">
                                        <label class="form-check-label" for="target-5">Doanh nhân</label>
                                    </div> -->


                                </div>
                                <div class="col-12" id="priceFilter">
                                    <div class="mb-2"><b>Mức giá</b></div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="price-2"
                                            value="duoi-10-trieu">
                                        <label class="form-check-label" for="price-2">Dưới 10 triệu</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="price-3"
                                            value="10-15-trieu">
                                        <label class="form-check-label" for="price-3">Từ 10 - 15
                                            triệu</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="price-4"
                                            value="15-20-trieu">
                                        <label class="form-check-label" for="price-4">Từ 15 - 20
                                            triệu</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="price-5"
                                            value="tren-20-trieu">
                                        <label class="form-check-label" for="price-5">Trên 20 triệu</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="mb-2"><b>Sắp xếp</b></div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="sort-1" value="gia-tang-dan"
                                            name="radio-sort">
                                        <label class="form-check-label" for="sort-1">Giá tăng dần</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="sort-2" value="gia-giam-dan"
                                            name="radio-sort">
                                        <label class="form-check-label" for="sort-2">Giá giảm dần</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="sort-3" checked
                                            value="gia-nothing" name="radio-sort">
                                        <label class="form-check-label" for="sort-3">Không sắp xếp</label>
                                    </div>

                                </div>
                                <div class="col-12">
                                    <button
                                        class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4"
                                        id="btnFilter">
                                        Lọc Sản Phẩm
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-8 text-center">
                            <div class="row g-4">
                                <c:if test="${totalPages ==  0}">
                                    <div>Không tìm thấy sản phẩm</div>
                                </c:if>
                                <h2 class="section-heading check text-center mb-4">Tất cả sản phẩm</h2>
                                <div class="row">
                                    <c:if test="${not empty products}">
                                        <c:forEach var="product" items="${products}">
                                            <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                                                <div class="card">
                                                    <img src="/images/product/${product.image}"
                                                        class="card-img-top img-fluid" alt="${product.name}">
                                                    <div class="card-body">
                                                        <a href="/product/${product.id}"
                                                            style="text-decoration: none; color: black;">
                                                            <h4 class="card-title"
                                                                style="font-size: 15px; text-align: center;">
                                                                ${product.name}
                                                            </h4>
                                                        </a>

                                                        <p class="text-muted"
                                                            style="font-size: 13px;text-align: center;">
                                                            ${product.shortDesc}
                                                        </p>
                                                        <div class="d-flex flex-lg-wrap justify-content-center">
                                                            <p class="text-primary fw-bold mb-3"
                                                                style="font-size: 15px;text-align: center; width: 100%;">
                                                                <fmt:formatNumber type="number"
                                                                    value="${product.price}" />
                                                                ₫
                                                            </p>

                                                            <form action="/add-product-to-cart/${product.id}"
                                                                method="post">
                                                                <input type="hidden" name="${_csrf.parameterName}"
                                                                    value="${_csrf.token}" />
                                                                <button
                                                                    class="mx-auto btn border border-secondary rounded-pill px-3 "
                                                                    style="color: gray;">
                                                                    <i class="fa fa-shopping-bag me-2 "></i>
                                                                    Add to cart
                                                                </button>
                                                            </form>

                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination justify-content-center">

                                                <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                                    <a class="page-link" href="/products?page=${currentPage - 1}${qs}"
                                                        aria-label="Previous" ${currentPage==1
                                                        ? 'tabindex="-1" aria-disabled="true"' : '' }>
                                                        <span aria-hidden="true">&laquo;</span>
                                                        <span class="sr-only">Previous</span>
                                                    </a>
                                                </li>


                                                <c:if test="${totalPages > 0}">
                                                    <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                                                        <li
                                                            class="page-item ${loop.index == currentPage ? 'active' : ''}">
                                                            <a class="page-link"
                                                                href="/products?page=${loop.index}${qs}">
                                                                ${loop.index}
                                                            </a>
                                                        </li>
                                                    </c:forEach>
                                                </c:if>


                                                <li class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
                                                    <a class="page-link" href="/products?page=${currentPage + 1}${qs}"
                                                        aria-label="Next" ${currentPage==totalPages
                                                        ? 'tabindex="-1" aria-disabled="true"' : '' }>
                                                        <span aria-hidden="true">&raquo;</span>
                                                        <span class="sr-only">Next</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </c:if>
                                    <c:if test="${empty products}">
                                        <p>Không có sản phẩm nào.</p>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <jsp:include page="./layout/experience.jsp" /> -->
                </div>
                <!-- Footer -->
                <jsp:include page="layout/footer.jsp" />

                <!-- Bootstrap core JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS -->
                <!-- <script src="/client/js/homepage.js"></script> -->

                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                <script>
                    $(document).ready(function () {
                        "use strict";

                        // Code xử lý nút tăng/giảm số lượng trong giỏ hàng (nếu có)
                        $('.quantity button').on('click', function () {
                            let change = 0;
                            var button = $(this);
                            var oldValue = button.parent().parent().find('input').val();
                            if (button.hasClass('btn-plus')) {
                                var newVal = parseFloat(oldValue) + 1;
                                change = 1;
                            } else {
                                if (oldValue > 1) {
                                    var newVal = parseFloat(oldValue) - 1;
                                    change = -1;
                                } else {
                                    newVal = 1;
                                }
                            }
                            const input = button.parent().parent().find('input');
                            input.val(newVal);

                            const index = input.attr("data-cart-detail-index")
                            const el = document.getElementById(`cartDetails${index}.quantity`);
                            $(el).val(newVal);

                            const price = input.attr("data-cart-detail-price");
                            const id = input.attr("data-cart-detail-id");

                            const priceElement = $(`p[data-cart-detail-id='${id}']`);
                            if (priceElement) {
                                const newPrice = +price * newVal;
                                priceElement.text(formatCurrency(newPrice.toFixed(2)) + " đ");
                            }

                            const totalPriceElement = $(`p[data-cart-total-price]`);
                            if (totalPriceElement && totalPriceElement.length) {
                                const currentTotal = totalPriceElement.first().attr("data-cart-total-price");
                                let newTotal = +currentTotal;
                                if (change === 0) {
                                    newTotal = +currentTotal;
                                } else {
                                    newTotal = change * (+price) + (+currentTotal);
                                }
                                change = 0;
                                totalPriceElement?.each(function (index, element) {
                                    $(totalPriceElement[index]).text(formatCurrency(newTotal.toFixed(2)) + " đ");
                                    $(totalPriceElement[index]).attr("data-cart-total-price", newTotal);
                                });
                            }
                        });

                        function formatCurrency(value) {
                            const formatter = new Intl.NumberFormat('vi-VN', {
                                style: 'decimal',
                                minimumFractionDigits: 0,
                            });
                            let formatted = formatter.format(value);
                            formatted = formatted.replace(/\./g, ',');
                            return formatted;
                        }

                        // Xử lý sự kiện click nút lọc sản phẩm
                        $('#btnFilter').click(function (event) {
                            event.preventDefault();

                            let factoryArr = [];
                            let targetArr = [];
                            let priceArr = [];

                            $("#factoryFilter .form-check-input:checked").each(function () {
                                factoryArr.push($(this).val());
                            });

                            $("#targetFilter .form-check-input:checked").each(function () {
                                targetArr.push($(this).val());
                            });

                            $("#priceFilter .form-check-input:checked").each(function () {
                                priceArr.push($(this).val());
                            });

                            let sortValue = $('input[name="radio-sort"]:checked').val();

                            const currentUrl = new URL(window.location.href);
                            const searchParams = currentUrl.searchParams;

                            searchParams.set('page', '1');

                            // Sắp xếp: Chỉ set nếu có giá trị, ngược lại xóa
                            if (sortValue) {
                                searchParams.set('sort', sortValue);
                            } else {
                                searchParams.delete('sort');
                            }

                            // Factory: Xóa tham số cũ, chỉ set nếu có giá trị, ngược lại xóa
                            searchParams.delete('factory');
                            if (factoryArr.length > 0) {
                                searchParams.set('factory', factoryArr.join(','));
                            }

                            // Target: Xóa tham số cũ, chỉ set nếu có giá trị, ngược lại xóa
                            searchParams.delete('target');
                            if (targetArr.length > 0) {
                                searchParams.set('target', targetArr.join(','));
                            }

                            // Price: Xóa tham số cũ, chỉ set nếu có giá trị, ngược lại xóa
                            searchParams.delete('price');
                            if (priceArr.length > 0) {
                                searchParams.set('price', priceArr.join(','));
                            }

                            window.location.href = currentUrl.toString();
                        });

                        // Xử lý tự động chọn checkbox/radio sau khi trang tải dựa trên URL params
                        const params = new URLSearchParams(window.location.search);

                        if (params.has('factory')) {
                            const factories = params.get('factory').split(',');
                            factories.forEach(factory => {
                                $(`#factoryFilter .form-check-input[value="${factory}"]`).prop('checked', true);
                            });
                        }

                        if (params.has('target')) {
                            const targets = params.get('target').split(',');
                            targets.forEach(target => {
                                $(`#targetFilter .form-check-input[value="${target}"]`).prop('checked', true);
                            });
                        }

                        if (params.has('price')) {
                            const prices = params.get('price').split(',');
                            prices.forEach(price => {
                                $(`#priceFilter .form-check-input[value="${price}"]`).prop('checked', true);
                            });
                        }

                        if (params.has('sort')) {
                            const sort = params.get('sort');
                            $(`input[type="radio"][name="radio-sort"][value="${sort}"]`).prop('checked', true);
                        }

                        // Xử lý thêm vào giỏ hàng (AJAX)
                        $('.btnAddToCartHomepage').click(function (event) {
                            event.preventDefault();
                            if (!isLogin()) {
                                $.toast({
                                    heading: 'Lỗi thao tác',
                                    text: 'Bạn cần đăng nhập tài khoản',
                                    position: 'top-right',
                                    icon: 'error'
                                })
                                return;
                            }

                            const productId = $(this).attr('data-product-id');
                            const token = $("meta[name='_csrf']").attr("content");
                            const header = $("meta[name='_csrf_header']").attr("content");

                            $.ajax({
                                url: `${window.location.origin}/api/add-product-to-cart`,
                                beforeSend: function (xhr) {
                                    xhr.setRequestHeader(header, token);
                                },
                                type: "POST",
                                data: JSON.stringify({ quantity: 1, productId: productId }),
                                contentType: "application/json",
                                success: function (response) {
                                    const sum = +response;
                                    $("#sumCart").text(sum)
                                    $.toast({
                                        heading: 'Giỏ hàng',
                                        text: 'Thêm sản phẩm vào giỏ hàng thành công',
                                        position: 'top-right',
                                    })
                                },
                                error: function (response) {
                                    alert("có lỗi xảy ra, check code đi ba :v")
                                    console.log("error: ", response);
                                }
                            });
                        });

                        $('.btnAddToCartDetail').click(function (event) {
                            event.preventDefault();
                            if (!isLogin()) {
                                $.toast({
                                    heading: 'Lỗi thao tác',
                                    text: 'Bạn cần đăng nhập tài khoản',
                                    position: 'top-right',
                                    icon: 'error'
                                })
                                return;
                            }

                            const productId = $(this).attr('data-product-id');
                            const token = $("meta[name='_csrf']").attr("content");
                            const header = $("meta[name='_csrf_header']").attr("content");
                            const quantity = $("#cartDetails0\\.quantity").val(); // Chú ý escape dấu chấm nếu id có dạng này
                            $.ajax({
                                url: `${window.location.origin}/api/add-product-to-cart`,
                                beforeSend: function (xhr) {
                                    xhr.setRequestHeader(header, token);
                                },
                                type: "POST",
                                data: JSON.stringify({ quantity: quantity, productId: productId }),
                                contentType: "application/json",
                                success: function (response) {
                                    const sum = +response;
                                    $("#sumCart").text(sum)
                                    $.toast({
                                        heading: 'Giỏ hàng',
                                        text: 'Thêm sản phẩm vào giỏ hàng thành công',
                                        position: 'top-right',
                                    })
                                },
                                error: function (response) {
                                    alert("có lỗi xảy ra, check code đi ba :v")
                                    console.log("error: ", response);
                                }
                            });
                        });

                        function isLogin() {
                            const navElement = $("#navbarCollapse");
                            const childLogin = navElement.find('a.a-login');
                            return childLogin.length <= 0; // Sửa: nếu không tìm thấy a.a-login (length = 0) nghĩa là đã login
                        }

                    });
                </script>
            </body>

            </html>