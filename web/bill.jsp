<%-- 
    Document   : bill
    Created on : Mar 24, 2023, 10:43:03 AM
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
        <form action="bill" method="post">
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2><b><a href="home">Home </a></b></h2> <h2><b><a href="billdetail">Bill Detail</a></b></h2>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover" style="background: lightyellow">
                    <thead>
                        <tr>
                            <th>
                            </th>
                            <th>Bill ID</th>
                            <th>User Name</th>
                            <th>Total</th>
                            <th>Payment</th>
                            <th>Address</th>
                            <th>Date</th><!-- <th>Actions</th> -->
                            <th>Phone</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listB}" var="o">
                            <tr>
                                <td>
                                    <span>
                                    </span>
                                </td>
                                <td>${o.bill_id}</td>
                                <td>${o.user_id}</td>
                                <td>${o.total}</td>
                                <td>${o.payment}</td>
                                <td>${o.address}</td>
                                <td>${o.date}</td>
                                <td>${o.phone}</td>
                                <td>
                                    <a href="loadUser?uid=${o.user_id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="deleteUser?uid=${o.user_id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
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

