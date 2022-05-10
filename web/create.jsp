<%-- 
    Document   : create
    Created on : Feb 23, 2022, 5:19:22 PM
    Author     : Mr.Thanh
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        UserError userError =(UserError) request.getAttribute("USER_ERROR");
        if(userError==null){
            userError= new UserError();
        }
        %>
        <form action="MainController" method="POST">
            User ID<input type="text" name="userID" required=""/></br>
            <%= userError.getUserIDError()%></br>
           Full Name<input type="text" name="fullName" required=""/></br>
           <%= userError.getFullNameError()%></br>
           Role ID<input type="text" name="roleID" required="" value="US"/></br>
           
           Password<input type="password" name="password" required=""/></br>
            Confirm<input type="password" name="confirm" required=""/></br>
            <%= userError.getConfirmError()%></br>
           <input type="Submit" name="action" value="Create"/></br>
            <input type="reset" value="Reset"/></br>
        </form>
    </body>
</html>
