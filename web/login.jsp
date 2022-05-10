<%-- 
    Document   : login
    Created on : Feb 16, 2022, 4:22:47 PM
    Author     : Mr.Thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Input your Information</h1>
        <form action="MainController" method="POST">
            User ID <input type="text" name="userID" required="" placeholder="input userid"/></br>
            Password <input type="password" name="password" required="" placeholder="password"/></br>
            <input type="submit" name="action" value="Login"/>
            <input type="reset"  value="Reset"/>

        </form>
        <!--        // còn lại 3 param 1 attribute có tên là error-->
        <%
            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>
        <%= error%>
        <a href="create.jsp">Create user</a>
        <a href="shopping.jsp">Happy shopping</a>

    </body>
</html>
