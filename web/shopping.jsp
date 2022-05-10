<%-- 
    Document   : shopping
    Created on : Mar 2, 2022, 4:21:45 PM
    Author     : Mr.Thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sweet Tea Farm </title>
    </head>
    <body>
        <h1>Welcome to our farm:</h1>

        <form action="MainController">
            <select name="cmbTea">
                <option value="T001-Milk Tea with pearl-10">Milk Tea with pearl-10$</option>
                <option value="T002-Orio Milk Tea-30">Orio Milk Tea-30$</option>
                <option value="T003-Macha Japan-60">Macha Japan-60$</option>
                <option value="T004-Taro Milk Tea-50">Taro Milk Tea-50$</option>        
            </select>
            <select name="cmbQuantity">
                <option value="1">1 cup</option>   
                <option value="2">2 cup</option>
                <option value="3">3 cup</option>
                <option value="4">4 cup</option>
                <option value="5">5 cup</option>
                <option value="10">10 cup</option>
            </select>

            <input type="submit" name="action" value="Add"/>
            <input type="submit" name="action" value="View"/>
        </form>

        <%
            String message = (String) request.getAttribute("MESSAGE");
            if (message == null) {
                message = "";
            }
        %>
        <%=message%>
    </body>
</html>
