<%-- 
    Document   : editUser
    Created on : Mar 21, 2023, 1:43:47 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
    </head>
    <body>                  <!-- Edit product -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="editUser" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Product</h4> <a class="modal-title" href="manager">back to home</a> 
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>User Name</label>
                                <input value="${userDetail.user_name}" name="id" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input value="${userDetail.user_email}" name="email" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input value="${userDetail.user_pass}" name="pass" type="text" class="form-control"  required>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-info" value="Edit">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>