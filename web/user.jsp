<%-- 
    Document   : user
    Created on : Feb 16, 2022, 4:59:25 PM
    Author     : Mr.Thanh
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>your information</h1>
        <!-- userid,password,action ->3 cái param attribute loginuser ,o session-->
        
        <%
         UserDTO loginUser=(UserDTO)   session.getAttribute("LOGIN_USER");
         if(loginUser==null){
             loginUser = new UserDTO();
         }
        %>
        User ID: <%=loginUser.getUserID() %></br>
        Full Name: <%=loginUser.getFullName()%></br>
        Role ID: <%=loginUser.getRoleID() %></br>
        Password: <%="****" %></br>
    </body>
</html>
