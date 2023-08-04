<%-- 
    Document   : product
    Created on : Mar 11, 2023, 12:12:20 PM
    Author     : admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="UTF-8">


    <!DOCTYPE html>
    <html>
        <head>
            <!-- menu -->
            <jsp:include page="layout/menu.jsp"></jsp:include>
            </head>
            <body class="sub_page">

                <style>
                    imgP{
                        width: 250px;
                        height: 300px;
                    }
                </style>

                <div class="hero_area">
                    <!-- header section strats -->

                    <!-- end header section -->
                </div>


                <!-- gallery section -->
                <section class="gallery_section layout_padding">
                    <div class="heading_container justify-content-center">
                        <h2>
                            Sản phẩm chủa chúng tôi
                        </h2>
                    </div>
                    <div class="container">
                        <div class="img_container">
                            <div class="box-1">
                                <div class="box-1-container">
                                    <div class="b-1">
                                        <div class="img-box">
                                            <img src="images/PH01.png" alt="">
                                        </div>
                                        <div class="img-box">
                                            <img src="images/TP01.png" alt="" width="100%" height="74%">
                                        </div>
                                    </div>
                                    <div class="b-2">
                                        <div class="img-box">
                                            <img src="images/PN01.png" alt="">
                                        </div>
                                        <div class="img-box">
                                            <img src="images/PN05.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="box-2">
                                <div class="img-box">
                                    <img src="images/IV02.png" alt="">
                                </div>
                                <div class="img-box">
                                    <img src="images/TK02.png" alt="" height="76%">
                                </div>
                            </div>
                        </div>

                        <!-- search -->
                        <h2>Search</h2>
                        <form action="search" method="post">
                            <div class="nav-item">
                                <form class="form-inline">
                                    <input value="${txtS}" name="txt" type="text" placeholder="Tìm kiếm...">
                                <button type="submit" class="btn  my-2 my-sm-0 nav_search-btn" style="background: lightgoldenrodyellow">Search</button>
                        </div>
                    </form></br>

                    <!-- Categories -->
                    <h2>Categories</h2>
                    <li class="text-white ${tag == o.category_id ? "active":""}">
                    <li class="list-group-item text-white"><a href="product">Tất cả sản phẩm</a></li>
                        <c:forEach items="${listC}" var="o">
                        <li class="list-group-item text-white ${tag == o.category_id ? "active":""}">
                            <a href="category?cid=${o.category_id}">${o.category_name}</a></li>
                        </c:forEach>

                    </br>
                    </br>

                    <!-- products -->
                    <div class="col-sm-12">
                        <div class="row">
                            <c:forEach items="${listP}" var="o">
                                <div class="col-12 col-md-6 col-lg-4">
                                    <div class="card">
                                        <img class="card-img-top" src="${o.img}" alt="Card image cap" width="300px" height="270px">
                                        <div class="card-body">
                                            <h4 class="card-title show_txt"><a href="detail?pid=${o.product_id}" title="View Product">${o.product_name}</a></h4>
                                            <p class="card-text show_txt">${o.product_name}</p>
                                            <div class="row">
                                                <div class="col">
                                                    <p class="btn btn-danger btn-block">${o.product_price} $</p>
                                                </div>
                                                <div class="col">
                                                    <a href="cart.jsp" class="btn btn-success btn-block">Add to cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>

            </section>
            <!--<!-- footer -->
            <jsp:include page="layout/footer.jsp"></jsp:include>
        </body>
    </html>