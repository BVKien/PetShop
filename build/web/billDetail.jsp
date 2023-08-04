<%-- 
    Document   : billDetail
    Created on : Mar 24, 2023, 11:08:14 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 250px;
                height: 220px;
            }
        </style>
    <body>
        <form action="billdetail" method="post">
            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2><b><a href="home">Home </a></b></h2>
                                <h2><a href="bill">Back</a></h2>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover" style="background: lightyellow">
                        <thead>
                            <tr>
                                <th>
                                </th>
                                <th>Bill ID</th>
                                <th>User ID</th>
                                <th>Product ID</th>
                                <th>Quantity</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listBD}" var="o">
                                <tr>
                                    <td>
                                        <span>
                                        </span>
                                    </td>
                                    <td>${o.detail_id}</td>
                                    <td>${o.bill_id}</td>
                                    <td>${o.product}</td>
                                    <td>${o.quantity}</td>
                                    <td>${o.price}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="clearfix">
                        </br>
                        </br>
                    </div>
                </div>
            </div>


            <script src="js/manager.js" type="text/javascript"></script>
            <script>

            </script>
    </body>
</html>
