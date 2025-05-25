<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">


            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <title>TheBinh - Delete Order</title>
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
                <!--     Fonts and icons     -->
                <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
                <!-- Nucleo Icons -->
                <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-icons.css"
                    rel="stylesheet" />
                <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-svg.css"
                    rel="stylesheet" />

                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <!-- CSS Files -->
                <link href="/css/dashboard.css" rel="stylesheet" />
                <style>
                    body {
                        background: linear-gradient(135deg, #232526, #414345);
                        font-family: 'Open Sans', sans-serif;
                        color: #f8f9fa;
                        margin: 0;
                        padding: 0;
                    }

                    .container-fluid {
                        padding: 2rem;
                    }

                    /* Header title style */
                    .page-title {
                        text-align: center;
                        margin-top: 50px;
                        margin-bottom: 20px;
                        color: antiquewhite;
                        font-size: 2rem;
                    }

                    /* Card style */
                    .card {
                        background: rgba(0, 0, 0, 0.7);
                        border-radius: 10px;
                        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
                        padding: 2rem;
                        margin: 20px auto;
                        max-width: 600px;
                    }

                    .card h3 {
                        color: #FFDD57;
                        text-align: center;
                        margin-bottom: 1rem;
                    }

                    hr {
                        border-top: 1px solid #f8f9fa;
                        margin-bottom: 1.5rem;
                    }

                    .alert {
                        text-align: center;
                        font-size: 1.1rem;
                    }

                    .btn-danger {
                        display: block;
                        width: 100%;
                        border-radius: 8px;
                        padding: 10px 20px;
                        font-size: 1rem;
                        transition: transform 0.2s ease, background-color 0.2s ease;
                    }

                    .btn-danger:hover,
                    .btn-danger:focus {
                        background-color: #c0392b;
                        transform: scale(1.02);
                    }
                </style>
            </head>


            <body>

                <jsp:include page="../layout/sidebar.jsp" />
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid">

                            <div class="card">
                                <h3>Delete Order with id = ${id}</h3>
                                <hr />
                                <div class="alert alert-danger">
                                    Are you sure to delete this order?
                                </div>
                                <form:form method="post" action="/admin/order/delete" modelAttribute="newOrder">
                                    <div class="mb-3" style="display: none;">
                                        <label class="form-label">Id:</label>
                                        <form:input value="${id}" type="text" class="form-control" path="id" />
                                    </div>
                                    <button class="btn btn-danger" type="submit">Confirm</button>
                                </form:form>
                            </div>
                        </div>
                    </main>

                </div>
                </div>


            </body>

            </html>