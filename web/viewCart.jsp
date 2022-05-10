<%-- 
    Document   : viewCart
    Created on : Mar 2, 2022, 4:46:22 PM
    Author     : Mr.Thanh
--%>

<%@page import="sample.shopping.Tea"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart Page</title>
    </head>
    <body>
        <h1>Your shopping cart:</h1>
        <%
            Cart cart = (Cart) session.getAttribute("CART");
            if (cart != null) {
                if (cart.getCart().size() > 0) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Edit </th>
                    <th>Remove </th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    double total = 0;
                    for (Tea tea : cart.getCart().values()) {
                        total += tea.getPrice() * tea.getQuantity();
                %>
            <form action="MainController" method="POST">
                <tr>
                    <td><%=count++%></td>
                    <td><%=tea.getId()%>
                        <input type="hidden" name="id" value="<%=tea.getId()%>"/>
                    </td>
                    <td><%=tea.getName()%></td>
                    <td><%=tea.getPrice()%>$</td>
                    <td>
                        <%--<%=tea.getQuantity()%>--%>
                        <input type="number" min="1" name="quantity" value="<%=tea.getQuantity()%>" required=""/>
                    </td>
                    <td><%=tea.getPrice() * tea.getQuantity()%>$</td>
                    <!--Update quantity-->
                    <td>
                        <input type="submit" name ="action" value="Edit"/>
                    </td>

                    <td>
                        <input type="submit" name ="action" value="Remove"/>
                    </td>
                </tr>
            </form>

            <%
                }
            %>
        </tbody>
    </table>
    <h1> Total :<%= total%>$</h1>
    <form action="MainController" method="POST">
        <input type="submit" name="action" value="CheckOut"/>
    </form>
    <%
            }
        }
    %>


</body>
</html>
