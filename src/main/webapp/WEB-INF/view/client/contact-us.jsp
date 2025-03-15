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

                    .contact-form {
                        width: 500px;
                        /* Độ rộng form */
                        padding: 30px;
                        background-color: #fff;
                        /* Màu nền form */
                        border-radius: 8px;
                        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                    }

                    .form-row {
                        display: flex;
                        justify-content: space-between;
                    }

                    .form-group {
                        margin-bottom: 20px;
                        width: 100%;
                    }

                    .form-group label {
                        display: block;
                        margin-bottom: 5px;
                        font-weight: bold;
                    }

                    .form-group input[type="text"],
                    .form-group input[type="email"],
                    .form-group textarea {
                        width: calc(100% - 22px);
                        /* Trừ đi padding và border */
                        padding: 10px;
                        border: 1px solid #ddd;
                        border-radius: 5px;
                        font-size: 16px;
                        resize: vertical;
                        /* Cho phép thay đổi chiều cao textarea */
                    }

                    .form-group textarea {
                        height: 150px;
                    }

                    .check {
                        font-family: 'Island Moments', cursive;
                        font-size: 57px;
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
                </style>
            </head>

            <body id="page-top">
                <!-- Navigation -->
                <jsp:include page="layout/header.jsp" />

                <div class="container">
                    <img src="https://housedesign.vn/wp-content/uploads/2019/12/image29-10.jpg" alt="">
                    <div class="row align-items-center" style="margin-top: 10%;">
                        <div class="col-lg-6 mb-4">
                            <h1 class="check text-center">About Us</h1>
                            <p>
                                Ngày nay Internet trở thành công cụ, phương tiện không thể thiếu của hầu hết mọi người.
                                Đặc biệt trong việc tìm kiếm thông tin sản phẩm (tính năng, giá cả, dịch vụ hậu mãi…),
                                so sánh và đánh giá sản phẩm trước khi mua hàng. Tháng 4/2004 website smartphoneshop.com
                                ra đời với mục tiêu trở thành website thương mại điện tử  hàng đầu Việt Nam. Sau 4 năm
                                phát triển, website smartphoneshop.com được Hiệp hội thương mại điện tử Việt Nam bình
                                chọn nằm trong top 10 website thương mại điện tử tại Việt Nam. Smartphoneshop.com luôn
                                chú trọng đầu tư nâng cấp về nội dung và hình thức, đi kèm với các chiến dịch quảng bá
                                online lẫn offline đầy sáng taọ. Theo thống kê mới nhất (tháng 1-2008) của Website
                                Alexa.com, Smartphoneshop.com có trên 20 triệu lượt người truy cập thường xuyên mỗi
                                tháng và hiện có mặt trong Top 35 Website được quan tâm nhất Việt Nam hiện nay. Nếu xét
                                riêng về lĩnh vực ĐTDĐ – Laptop, www.Smartphoneshop.com tự hào là website số 1 tại thị
                                trường Việt Nam.
                            </p>
                        </div>
                        <div class="col-lg-6">
                            <h1 class="check text-center">Contact Us</h1>
                            <form class="contact-form w-100">
                                <div class="form-row">
                                    <div class="form-group w-100 mb-3">
                                        <label for="firstName">First name</label>
                                        <input type="text" id="firstName" name="firstName" class="form-control"
                                            placeholder="Nguyen">
                                    </div>
                                    <div class="form-group w-100 mb-3">
                                        <label for="lastName">Last name</label>
                                        <input type="text" id="lastName" name="lastName" class="form-control"
                                            placeholder="The Binh">
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="email">Email address</label>
                                    <input type="email" id="email" name="email" class="form-control"
                                        placeholder="email@gmail.com">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="message">Your message</label>
                                    <textarea id="message" name="message" class="form-control"
                                        placeholder="Enter your question or message"></textarea>
                                </div>
                                <button type="submit" class="btn w-100"
                                    style="background-color: cadetblue;">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>




                <jsp:include page="./layout/experience.jsp" />

                <!-- Footer -->
                <jsp:include page="layout/footer.jsp" />

                <!-- Bootstrap core JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS -->
                <script src="/client/js/homepage.js"></script>
            </body>

            </html>