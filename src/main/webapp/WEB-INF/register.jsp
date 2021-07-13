<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Registration page</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="email">Email</label>
                <input name="email" id="email" type="text" class="form-control" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="username">Username</label>
                <input name="username" id="username" type="text" class="form-control" placeholder="Create your username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input name="password" id="password" type="password" class="form-control" placeholder="Create a password" required>
            </div>
            <button class="btn btn-block btn-primary">Create account</button>
        </form>
    </div>
</body>
</html>
