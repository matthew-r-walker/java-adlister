<%--
  Created by IntelliJ IDEA.
  User: mw
  Date: 7/7/21
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Super secret admin page!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />
    <h1>Hello ${sessionScope.user}</h1>
    <h1>this is the super secret admin page. woo wow wee wow</h1>
</body>
</html>
