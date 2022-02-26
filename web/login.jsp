<%--
  Created by IntelliJ IDEA.
  User: hty
  Date: 2022-02-25
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h3 style="color: red;">${error}</h3>
<form action="${pageContext.request.contextPath}/user/login" method="post">
    <div class="form-group">
        <label>请输入账号:</label>
        <input type="text" class="form-control" name="userName" value="${userName}">
    </div>
    <div class="form-group">
        <label>请输入密码</label>
        <input type="password" class="form-control" name="userPassword">
    </div>
    <button type="submit" class="btn btn-primary">登陆</button>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/regist.jsp">注册</a>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/toAdminLogin">管理员登陆</a>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">首页</a>
</form>
</body>
</html>
