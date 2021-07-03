<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View color</title>
    <style>
        body {
            <%--background-color: <%= request.getParameter("color")%>;--%>
            background-color: ${param.color};
        }
    </style>
</head>
<body>
    <h1>View color page</h1>
</body>
</html>
