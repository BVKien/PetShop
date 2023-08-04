<%-- 
    Document   : index
    Created on : Mar 17, 2023, 8:14:58 AM
    Author     : admin
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Poppins:400,600,700&display=swap" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
    </head>

    <body>                
        <div class="hero_area">
            <!-- header section strats -->
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

                            <!--                            <div class="quote_btn-container ">
                                                            <ul class="navbar-nav  ">
                                                                </li>
                                                                <li class="nav-item">
                                                                    <a href="cart.jsp">
                                                                        <img src="images/gcart.png" alt="cart">
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>-->

                        </div>
                    </nav>
                </div>  
            </header>
            <!-- end header section -->
            <!-- slider section -->
            <section class=" slider_section position-relative">
                <div class="slider_number-container ">
                    <div class="number-box">
                        <span>
                        </span>
                        <hr>
                        <span>
                        </span>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="detail_box">
                                            <h2>
                                                Chào mừng bạn đã đến với
                                            </h2>
                                            <h1>
                                                🐕 The Golden Pet Shop 🐕  All About Your Puppies
                                            </h1>
                                            <p>
                                                The Golden Pet Shop là chuỗi cửa hàng và chăm sóc thú cưng lớn nhất toàn quốc
                                            </p>
                                            <div>
                                                <a href="product.jsp">Mua hàng ngay tại đây</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="detail_box">
                                            <h2>
                                                Đội ngũ chăm sóc chuyên nghiệp
                                            </h2>
                                            <h1>
                                                Thú cưng của bạn là hạnh phúc của chúng tôi
                                            </h1>
                                            <p>
                                                Với đội ngũ chăm sóc chuyên nghiệp được đào tạo từ các trường đại học, 
                                                cao học lớn trên toàn thế giới từ cấp bậc cử nhân, thạc sĩ, tiến sĩ,...
                                            </p>
                                            <div>
                                                <a href="product.jsp">Mua hàng ngay tại đây</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="detail_box">
                                            <h2>
                                                Ở đây chúng tôi có
                                            </h2>
                                            <h1>
                                                Tất cả mọi thứ mà thú cưng của bạn cần
                                            </h1>
                                            <p>
                                                Ở đây chúng tôi có thức ăn cho cún, phụ kiện cùng những dịch vụ 
                                                chăm sóc đem đến sự thoải mái và hài lòng nhất đến với thú cưng của bạn
                                            </p>
                                            <div>
                                                <a href="product.jsp">Mua hàng ngay tại đây</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel_btn-container">
                                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
            <!-- end slider section -->
        </div>

        <!-- about section -->
        <section class="about_section ">
<!--            <div class="section_number">
                
            </div>-->
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-xl-7">
                        <div class="img-box">
                            <img src="images/logo3.jpg" alt="" />
                        </div>
                    </div>
                    <div class="col-md-5 col-xl-5">
                        <div class="detail_box">
                            <div class="heading_container justify-content-end">
                                <h2>
                                    Chúng tôi
                                </h2>
                            </div>
                            <p>
                                The Golden Pet Shop là chuỗi cửa hàng và chăm sóc thú cưng lớn nhất toàn quốc.
                                Với đội ngũ chăm sóc chuyên nghiệp được đào tạo từ các trường đại học, 
                                cao học lớn trên toàn thế giới từ cấp bậc cử nhân, thạc sĩ, tiến sĩ, .....
                                Ở đây chúng tôi có thức ăn cho cún, phụ kiện cùng những dịch vụ 
                                chăm sóc đem đến sự thoải mái và hài lòng nhất đến với thú cưng của bạn.
                                
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- end about section -->

<!--         why section 
        <section class="why_section layout_padding">
            <div class="section_number">
                02
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>
                            Tại sao nên chọn đội ngũ của The Golden Pet Shop ?
                        </h2>

                         section doi ngu the golden petshop 
                        <div class="client_section layout_padding">
                            <div class="detail_box">
                                <div class="col-md-12">
                                    <img src="images/kaka.png" alt="" width="25%"/>
                                    <img src="images/kaka.png" alt="" width="24%"/>
                                    <img src="images/kaka.png" alt="" width="25%"/>
                                    <img src="images/kaka.png" alt="" width="24%"/>
                                </div>

                            </div>
                        </div>
                         end section doi ngu the golden petshop 

                        <p>
                            T?i sao....
                        </p>
                    </div>
                </div>
            </div>
        </section>

         end why section -->

        <!-- gallery section -->
        <section class="gallery_section layout_padding">
<!--            <div class="section_number">
                03
            </div>-->
            <div class="heading_container justify-content-center">
                <h2>
                    Sản phẩm của chúng tôi
                </h2>
            </div>
            <div class="container">
                <div class="img_container">
                    <div class="box-1">
                        <div class="box-1-container">
                            <div class="b-1">
                                <div class="img-box">
                                    <img src="images/PH01.png" alt="" width="250px" height="250px">
                                </div>
                                <div class="img-box">
                                    <img src="images/PH02.png" alt="" width="250px" height="250px">
                                </div>
                            </div>
                            <div class="b-2">
                                <div class="img-box">
                                    <img src="images/CD04.png" alt="" width="250px" height="250px">
                                </div>
                                <div class="img-box">
                                    <img src="images/TK02.png" alt="" width="250px" height="250px">
                                </div>
                            </div>
                        </div>
                        <div class="b-3">
                            <div class="img-box">
                                <img src="images/TP01.png" alt="" width="250px" height="250px">
                            </div>
                        </div>
                    </div>
                    <div class="box-2">
                        <div class="img-box">
                            <img src="images/ST01.png" alt="" width="250px" height="250px">
                        </div>
                        <div class="img-box">
                            <img src="images/ST03.png" alt="" width="250px" height="250px">
                        </div>
                        <div class="img-box flex-grow-1">
                            <img src="images/ID03.png" alt="" width="250px" height="250px">
                        </div>
                    </div>
                    
                    <div class="box-2">
                        <div class="img-box">
                            <img src="images/ID04.png" alt="" width="250px" height="250px">
                        </div>
                        <div class="img-box">
                            <img src="images/ST04.png" alt="" width="250px" height="250px">
                        </div>
                        <div class="img-box flex-grow-1">
                            <img src="images/PH03.png" alt="" width="250px" height="250px">
                        </div>
                    </div>
                    
                </div>
        </section>
        <!-- end gallery section -->


        <!-- button san pham-->


        <section class="why_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div>
                            <a href="product">
                                Khám phá ngay
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <!-- client section -->

        <section class="client_section layout_padding">
            <div class="container">
                <div class="heading_container justify-content-center">
                    <h2>
                        Phản hồi từ khách hàng
                    </h2>
<!--                    <div class="section_number">
                        04
                    </div>-->
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="client_box">
                            <div class="detail_box">
                                <div class="img_box">
                                    <img src="images/client-1.png">
                                </div>
                                <h5>
                                    nomil du
                                </h5>
                                <p>Qua tuyet voi, 10 sao shop nhe</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="client_box">
                            <div class="detail_box">
                                <div class="img_box">
                                    <img src="images/client-2.png">
                                </div>
                                <h5>
                                    zabih jo
                                </h5>
                                <p>Hai long danh gia 10 sao</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <!-- end client section -->

        <!-- arrange section -->

        <section class="arrange_section">
            <div class="container">
                    <h2>
                        THANK YOU ! </br>
                    </h2>
            </div>
        </section>
        </br>

        <!-- end arrange section -->

        <!-- info section -->
        <section class="info_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="info_logo">
                            <h5>
                                Golden Pet 
                            </h5>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_links pl-lg-5">
                            <h5>
                                Utilities
                            </h5>
                            <ul>
                                <li>
                                    <a href="home">
                                        Home
                                    </a>
                                </li>
                                <li>
                                    <a href="product">
                                        Product
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        Contact
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_insta">
                            <h5>
                                Instagram
                            </h5>
                            <div class="insta_container">
                                <div>
                                    <a href="https://www.instagram.com/golden.page_/">
                                        <div class="insta-box b-1">
                                            <img src="images/insta-1.png" alt="">
                                        </div>
                                    </a>
                                    <a href="https://www.instagram.com/golden.page_/">
                                        <div class="insta-box b-2">
                                            <img src="images/insta-2.png" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div>
                                    <a href="https://www.instagram.com/golden.page_/">
                                        <div class="insta-box b-3">
                                            <img src="images/insta-3.png" alt="">
                                        </div>
                                    </a>
                                    <a href="https://www.instagram.com/golden.page_/">
                                        <div class="insta-box b-4">
                                            <img src="images/insta-4.png" alt="">
                                        </div>
                                    </a>
                                </div>
                                <div>
                                    <a href="https://www.instagram.com/golden.page_/">
                                        <div class="insta-box b-3">
                                            <img src="images/insta-5.png" alt="">
                                        </div>
                                    </a>
                                    <a href="https://www.instagram.com/golden.page_/">
                                        <div class="insta-box b-4">
                                            <img src="images/insta-6.png" alt="">
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_contact">
                            <h5>
                                Contact
                            </h5>
                            <div>
                                <img src="images/location-white.png" alt="">
                                <p>
                                    Thach That-Hoa Lac
                                </p>
                            </div>
                            <div>
                                <img src="images/telephone-white.png" alt="">
                                <p>
                                    +84 961498125
                                </p>
                            </div>
                            <div>
                                <img src="images/envelope-white.png" alt="">
                                <a href="mailto:kbui0212@gmail.com">kbui0212@gmail.com</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end info_section -->

        <!-- footer section -->
        <footer class="container-fluid footer_section">
            <p>
                &copy; <span></span>
                <a href="/TheFior/index.html">The Golden Pet Shop</a>
            </p>
        </footer>
        <!-- footer section -->

        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
    </body>

</html>

