<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String userName = request.getParameter("uname");
        String userPass = request.getParameter("psw");
        if (userName.equals("admin") && userPass.equals("password")) {
            response.sendRedirect("/profile.jsp");
        } else {
            response.sendRedirect("/login.jsp");
        }
    }
%>

<html>
<head>
    <title>Login</title>
    <%@include file="partials/head.jsp"%>
</head>
<body>
    <%@include file="partials/nav-bar.jsp"%>
    <form class="card mx-auto mt-3 w-50" method="post" action="/login.jsp">
        <h2 class="card-header text-center">Login</h2>
        <label for="uname"><b>Username</b></label>
        <input id="uname" type="text" placeholder="Enter Username" name="uname" required>
        <label for="psw"><b>Password</b></label>
        <input id="psw" type="password" placeholder="Enter Password" name="psw" required>
        <button type="submit">Login</button>
    </form>
    <%@include file="partials/scripts.jsp"%>
</body>
</html>
