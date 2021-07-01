<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: mw
  Date: 7/1/21
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- this code block works if I change my form action to .jsp--%>
<%--<%--%>
<%--    if(request.getMethod().equalsIgnoreCase("post")) {--%>
<%--        String crustType = request.getParameter("crustType");--%>
<%--        String pizzaSize = request.getParameter("pizza-size");--%>
<%--        String[] toppings = request.getParameterValues("toppings");--%>
<%--        String deliveryAddress = request.getParameter("delivery-address");--%>
<%--        request.setAttribute("crustType", crustType);--%>
<%--        request.setAttribute("delivery-address", deliveryAddress);--%>
<%--        System.out.println(crustType);--%>
<%--        System.out.println(pizzaSize);--%>
<%--        for(String topping : toppings) {--%>
<%--            System.out.println(topping);--%>
<%--        }--%>
<%--        System.out.println(deliveryAddress);--%>
<%--    }--%>
<%--%>--%>
<html>
<head>
    <title>Order</title>
</head>
<body>
    <h1>Pizza Palace</h1>
    <form method="post" action="pizza-order">
        <div>
            <label for="crustType">Pick a crust</label>
            <select id="crustType" name="crustType">
                <option value="regular-crust">Regular crust</option>
                <option value="thin-crust">Thin crust</option>
                <option value="stuffed-crust">Stuffed crust</option>
            </select>
        </div>
        <div>
            <label for="sauce">Pick a sauce</label>
            <select id="sauce" name="sauce">
                <option value="ranch">Ranch</option>
                <option value="marinara">Marinara</option>
                <option value="alfredo">Alfredo</option>
            </select>
        </div>
        <div>
            <label for="pizza-size">Pick a size</label>
            <select id="pizza-size" name="pizza-size">
                <option value="small-12">Small 12"</option>
                <option value="medium-14">Medium 14"</option>
                <option value="large-16">Large 16"</option>
            </select>
        </div>
        <div>
            <label>Pick your toppings:</label>
            <label for="cheese">Cheese</label>
            <input id="cheese" name="toppings" type="checkbox" value="cheese" checked>
            <label for="pepperoni">Pepperoni</label>
            <input id="pepperoni" name="toppings" type="checkbox" value="pepperoni">
            <label for="sausage">Sausage</label>
            <input id="sausage" name="toppings" type="checkbox" value="sausage">
        </div>
        <div>
            <label for="delivery-address">Delivery address:</label>
            <input type="text" name="delivery-address" id="delivery-address" placeholder="Please enter address.">
        </div>
        <input type="submit">
    </form>
</body>
</html>
