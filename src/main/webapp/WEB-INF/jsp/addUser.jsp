<%--
  Created by IntelliJ IDEA.
  User: 苗壮
  Date: 2021/5/26
  Time: 0:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <%--美化界面--%>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>进行注册</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/price/addUser" method="post">
        <div class="form-group">
            <label>用户名：</label>
            <input type="text" name="username" class="form-control" required>
        </div>
        <div class="form-group">
            <label>密码：</label>
            <input type="text" name="password" class="form-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>
</div>
</body>
</html>
