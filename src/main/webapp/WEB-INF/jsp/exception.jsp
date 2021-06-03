
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Login Page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/login.js"></script>
    <style>
        .content{
            display: flex;
            justify-content: center;
        }
        .error-content{
            width: 300px;
            margin: 0px auto;
            color: darkseagreen;

        }
        .text-red{
         width: 50px;
            margin: auto;
            font-size: 20px;
        }
    </style>
</head>

<body style="overflow:hidden">
<div class="content-wrapper">

    <!-- Main content -->
    <section class="content">

        <div class="error-page">
            <h2 class="headline text-red" >提示:</h2>

            <div class="error-content">
                <h3 style="font-size: 36px"><i class="fa fa-warning text-red"></i> 暂时没有您的信息 </h3>
                <h4>
                    请返回页面重新操作，若无法解决，请联系管理员处理
                </h4>
                <h3> 联系方式 ：000-000000</h3>
                <h3> </h3>
                <a href="alllogin">返回登录</a>
            </div>
        </div>
        <!-- /.error-page -->

    </section>
    <!-- /.content -->
</div>
</body>
</html>
