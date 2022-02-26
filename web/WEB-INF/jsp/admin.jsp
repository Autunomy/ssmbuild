<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hty
  Date: 2022-02-25
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户管理</title>
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
                    <small>用户表</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <%--toAddBook--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">查看书籍列表</a>
            </div>
            <div class="col-md-8 column">
                <%--查询用户--%>
                <form class="form-inline" action="${pageContext.request.contextPath}/user/queryUser" method="post" style="float: right">
                    <span style="color: red;font-weight: bold">${error}</span>
                    <input type="text" placeholder="请输入要查询的用户名称" class="form-control" name="userName">
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>

    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>用户id</th>
                    <th>用户姓名</th>
                    <th>用户密码</th>
                    <th>用户年龄</th>
                    <th>用户性别</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.userID}</td>
                        <td>${user.userName}</td>
                        <td>${user.userPassword}</td>
                        <td>${user.userAge}</td>
                        <td>${user.userGender}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/user/toUpdateUser?id=${user.userID}">修改</a>
                            &nbsp;|&nbsp;
                            <a href="${pageContext.request.contextPath}/user/deleteUser?id=${user.userID}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
