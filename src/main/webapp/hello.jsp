<%--
  Created by IntelliJ IDEA.
  User: mw
  Date: 7/1/21
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Hello, ${name}!</h1>
    <form action="hello" method="post">
        <label for="name">Enter Name:</label>
        <input type="text" name="name" id="name">
        <input type="submit">
    </form>
</body>
</html>
