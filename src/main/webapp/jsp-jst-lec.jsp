<%--
  Created by IntelliJ IDEA.
  User: mw
  Date: 6/30/21
  Time: 9:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- this comment will not show in the webpage source view--%>

<%-- Include directive syntax below --%>
<%--<%@ include file=""%>--%>

<%-- Directive Tags are symbolized with a <%@ directive attributes %> --%>

<%! int instanceCount = 0; %>

<%
    int count = 1;
    count++;
    instanceCount++;
%>

<html>
    <head>
        <title>JSP Tag</title>
        <%@include file="partials/head.jsp"%>
    </head>
    <body>
        <%@include file="partials/nav-bar.jsp" %>
        <h1 class="bg-primary">Hello THERE!</h1>

        <h2>The count is: <%= count %></h2>
        <h2>The instance count is: <%= instanceCount %></h2>
        <!-- this comment will be seen inside the webpage srcfile -->
        <%@include file="partials/national-parks.jsp" %>
    </body>
</html>
