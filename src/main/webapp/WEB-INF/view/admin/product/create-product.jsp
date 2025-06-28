<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


                <!DOCTYPE html>
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
                    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
                    <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-icons.css"
                        rel="stylesheet" />
                    <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-svg.css"
                        rel="stylesheet" />
                    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
                    <link href="/css/dashboard.css" rel="stylesheet" />
                    <style>
                        body {
                            background: linear-gradient(135deg, #232526 0%, #414345 100%);
                            font-family: 'Open Sans', sans-serif;
                            color: #f8f9fa;
                        }

                        /* .content {
                            margin-top: 70px;
                        } */

                        .container {
                            background: rgba(0, 0, 0, 0.5);
                            padding: 2rem;
                            border-radius: 10px;
                            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
                            margin-bottom: 2rem;
                            margin-left: 200px;
                        }

                        h1 {
                            text-align: center;
                            margin-bottom: 2rem;
                            color: #FFDD57;
                        }

                        hr {
                            border-top: 1px solid #f8f9fa;
                        }

                        .form-label {
                            font-weight: bold;
                        }

                        .form-control,
                        .form-select {
                            border-radius: 8px;
                            background: #353a40;
                            border: 1px solid #555;
                            color: #f8f9fa;
                        }

                        .invalid-feedback {
                            color: #ff6b6b;
                            font-size: 0.85em;
                        }

                        .btn {
                            border-radius: 8px;
                            transition: all 0.25s ease;
                            padding: 0.5rem 1.2rem;
                        }

                        .btn:hover,
                        .btn:focus {
                            transform: scale(1.03);
                        }

                        .btn-primary {
                            background-color: #1E90FF;
                            border: none;
                        }

                        .btn-success {
                            background-color: #28a745;
                            border: none;
                        }
                    </style>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                    <script>
                        $(document).ready(() => {
                            const avatarFile = $("#avatarFile");
                            avatarFile.change(function (e) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#avatarPreview").attr("src", imgURL);
                                $("#avatarPreview").css({ "display": "block" });
                            });
                        }); 
                    </script>
                </head>

                <body>

                    <jsp:include page="../layout/sidebar.jsp" />
                    <main>
                        <div class="content">
                            <div class="inner-content" style="margin-top: 50px;">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-3"></div>
                                        <div class="col-xl-6">
                                            <h1 style="text-align: center ;">
                                                Create a product</h1>
                                            <hr>
                                            <br>
                                            <div class="col-xl-3"></div>
                                        </div>
                                    </div>

                                </div>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-3"></div>
                                        <div class="col-xl-6">
                                            <form:form action="/admin/product/create" method="post"
                                                modelAttribute="newProduct" enctype="multipart/form-data">

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <c:set var="errorName">
                                                                <form:errors path="name" cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="name" type="text"
                                                                class="form-label">Name:</label>
                                                            <form:input type="text"
                                                                class="form-control ${not empty errorName ? 'is-invalid' : ''}"
                                                                id="name" path="name" />
                                                            ${errorName}
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <c:set var="errorPrice">
                                                                <form:errors path="price" cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="price" class="form-label ">Price:</label>
                                                            <form:input type="number"
                                                                class="form-control ${not empty errorPrice ? 'is-invalid':''}"
                                                                id="price" path="price" />
                                                            ${errorPrice}
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <c:set var="errorDetailDesc">
                                                        <form:errors path="detailDesc" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <label for="exampleFormControlTextarea1">Detail description:</label>
                                                    <form:textarea type="text"
                                                        class="form-control ${not empty errorDetailDesc ? 'is-invalid': ''}"
                                                        id="detailDesc" rows="3" path="detailDesc" />
                                                    ${errorDetailDesc}
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <c:set var="errorShortDesc">
                                                                <form:errors path="shortDesc"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="shortDesc" class="form-label">Short
                                                                description:</label>
                                                            <form:input type="text"
                                                                class="form-control ${not empty errorShortDesc ? 'is-invalid' : ''}"
                                                                id="shortDesc" path="shortDesc" />
                                                            ${errorShortDesc}
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <c:set var="errorQuantity">
                                                                <form:errors path="quantity"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="quantity1" class="form-label ">Quantity:</label>
                                                            <form:input type="number"
                                                                class="form-control ${not empty errorQuantity ? 'is-invalid': ''}"
                                                                id="quantity1" path="quantity" />
                                                            ${errorQuantity}
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="factory" class="form-label">Factory:</label>
                                                            <form:select class="form-select" path="factory"
                                                                id="factory">
                                                                <form:option value="Apple">Apple</form:option>
                                                                <form:option value="Samsung">Samsung</form:option>
                                                                <form:option value="Xiaomi">Xiaomi</form:option>
                                                                <form:option value="Oppo">Oppo</form:option>
                                                                <form:option value="Huawei">Huawei</form:option>
                                                            </form:select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="target" class="form-label">Target:</label>
                                                            <form:select class="form-select" path="target" id="target">
                                                                <form:option value="Gaming">Gaming</form:option>
                                                                <form:option value="Work">Work</form:option>
                                                                <form:option value="Study">Study</form:option>
                                                            </form:select>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="avatarFile" class="form-label">Image:</label>
                                                    <input class="form-control" type="file" id="avatarFile"
                                                        accept=".png, .jpg, .jpeg" name="thebinhFile" />
                                                </div>

                                                <br>
                                                <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                    id="avatarPreview" />
                                                <br>

                                                <div class="d-flex justify-content-between">
                                                    <button type="submit" class="btn btn-primary">Create</button>
                                                    <a href="/admin/product" class="btn btn-success">Back</a>
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
                    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                    <script>
                        $(document).ready(function () {
                            "use strict";


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


                        });
                    </script>



                </body>

                </html>