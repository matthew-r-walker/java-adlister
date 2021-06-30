<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    try {

        boolean testForTrue = false;

        String userName = request.getParameter("uname");
        String userPass = request.getParameter("psw");

        if (userName.equals("admin") && userPass.equals("password")) {
            testForTrue = true;
        }

        request.setAttribute("testForTrue", testForTrue);

    } catch (NullPointerException npe) {

    }
%>

<html>
<head>
    <title>Login</title>
    <%@include file="partials/head.jsp"%>
</head>
<body>
    <%@include file="partials/nav-bar.jsp"%>
    <form class="card mx-auto mt-3 w-50" method="post">
        <h2 class="card-header text-center">Login</h2>
        <label for="uname"><b>Username</b></label>
        <input id="uname" type="text" placeholder="Enter Username" name="uname" required>
        <label for="psw"><b>Password</b></label>
        <input id="psw" type="password" placeholder="Enter Password" name="psw" required>
        <button type="submit">Login</button>
        <h1>Username: ${param.uname}</h1>
        <h1>Password: ${param.psw}</h1>

        <c:if test="${testForTrue}">
            <% response.sendRedirect("/profile.jsp"); %>
        </c:if>
<%--    <c:choose>--%>
<%--        <c:when test="${testForTrue}">--%>
<%--            <% response.sendRedirect("/profile.jsp"); %>--%>
<%--        </c:when>--%>
<%--          <c:otherwise>--%>
<%--              <h3>This is otherwise.</h3>--%>
<%--              <% response.sendRedirect("/login.jsp"); %>--%>
<%--          </c:otherwise>--%>
<%--    </c:choose>--%>
    <%@include file="partials/scripts.jsp"%>
    </form>
</body>
</html>
