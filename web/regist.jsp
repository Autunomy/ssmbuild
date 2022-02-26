<%--
  Created by IntelliJ IDEA.
  User: hty
  Date: 2022-02-25
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/regist" method="post">
    <input type="hidden" name="userID" value="-1">
    <div class="form-group">
        <label>请输入账号</label>
        <input type="text" class="form-control" name="userName">
    </div>
    <div class="form-group">
        <label>请输入密码</label>
        <input type="password" class="form-control" name="userPassword">
    </div>
    <div class="form-group">
        <label>请输入年龄</label>
        <input type="text" class="form-control" name="userAge">
    </div>
    <div class="form-group">
        <label>请输入性别</label>
        <input type="text" class="form-control" name="userGender">
    </div>
    <button type="submit" class="btn btn-primary">注册</button>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/login.jsp">登陆</a>
</form>
</body>
</html>
