<%-- 
    Document   : login
    Created on : Mar 17, 2023, 11:25:27 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>The Golden Pet Shop</title>

        <!-- slider stylesheet -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!-- login css -->
        <link rel="stylesheet" type="text/css" href="css/login.css" />

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Poppins:400,600,700&display=swap" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
    </head>

    <body>
        <div class="hero_area">
            <header class="header_section">
                <div class="container">
                    <nav class="navbar navbar-expand-lg custom_nav-container ">
                        <a class="navbar-brand" href="home">
                            <span>
                                Golden Pet
                            </span>
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <div class="d-flex mx-auto flex-column flex-lg-row align-items-center">

                                <ul class="navbar-nav  ">
                                    <li class="nav-item">
                                        <a class="nav-link" href="home">Home<span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="product">Product</a>
                                    </li>



                                    <c:if test="${sessionScope.acc==null}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="login">Log in</a>
                                        </li>

                                    </c:if>

                                    <c:if test="${sessionScope.acc!=null}">
                                        <c:if test="${sessionScope.acc.isAdmin == 'TRUE' }">
                                            <li class="nav-item">
                                                <a class="nav-link" href="managercustomer">Manage customer</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="manager">Manage product</a>
                                            </li>
                                            <li class="nav-item">
                                            </c:if>
                                            <!--                                        <li class="nav-item">
                                                                                        <a class="nav-link" href="">Bill</a>
                                                                                    </li>-->
                                        <li class="nav-item">
                                            <a class="nav-link" href="editprofile">Edit profile</a>
                                        </li>
                                        <a class="nav-link">Hello ${sessionScope.acc.user_name}</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="logout">Log out</a>
                                        </li>

                                        <c:if test="${sessionScope.acc.isAdmin == 'FALSE' }">
                                            <!-- cart -->
                                            <div class="quote_btn-container ">
                                                <ul class="navbar-nav  ">
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="cart">
                                                            <img src="images/gcart.png" alt="cart">
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </c:if>

                                    </c:if>

                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>  
            </header>
            <section>

                <!--Bắt Đầu Phần Nội Dung-->
                <section class="about_section ">
                    <div class="noi-dung">
                        <div class="form">
                            <h2>Trang Đăng Nhập</h2>
                            <form action="login" method="POST">
                                <div class="input-form">
                                    <span>Email dang nhap</span>
                                    <input type="text" name="user">
                                </div>
                                <div class="input-form">
                                    <span>Mật Khẩu</span>
                                    <input type="password" name="pass">
                                </div>
                                <div class="nho-dang-nhap">
                                    <label><input type="checkbox" name=""> Nhớ Đăng Nhập</label>
                                </div>
                                <div class="input-form">
                                    <input type="submit" value="Đăng Nhập">
                                </div>
                                <p style="color: red">${mess}</p>
                                <div class="input-form">
                                    <p>Bạn Chưa Có Tài Khoản? <a href="signup">Đăng Ký</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </section>        
                <!--Kết Thúc Phần Nội Dung-->
        </div>

    </body>
</br></br></br></br></br></br>
</html>
