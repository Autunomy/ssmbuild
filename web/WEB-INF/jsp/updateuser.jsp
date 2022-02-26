<%--
  Created by IntelliJ IDEA.
  User: hty
  Date: 2022-02-25
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改用户</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/user/updateUser" method="post">
        <input type="hidden" name="userID" value="${user.userID}"/>
        <div class="form-group">
            <label>账号:</label>
            <input type="text" name="userName" class="form-control" value="${user.userName}" required>
        </div>
        <div class="form-group">
            <label>密码:</label>
            <input type="text" name="userPassword" class="form-control" value="${user.userPassword}" required>
        </div>
        <div class="form-group">
            <label>年龄:</label>
            <input type="text" name="userAge" class="form-control" value="${user.userAge}" required>
        </div>
        <div class="form-group">
            <label>性别:</label>
            <input type="text" name="userGender" class="form-control" value="${user.userGender}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
</div>
</body>
</html>

