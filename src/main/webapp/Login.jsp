<%--
  Created by IntelliJ IDEA.
  User: ABEL
  Date: 2017/5/20
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/css/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <script src="login/jquery/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="/js/bootstrap.js" type="text/javascript"></script>
    <script src="/login/login-register.js" type="text/javascript"></script>
    <!-- 引入 Bootstrap -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
    Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <meta name="viewport" content="width=device-width, initial-scale=1,
   maximum-scale=1, user-scalable=no">
    <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <![endif]-->
</head>
<body style="">
<%--<div style=" background-color:#46A3FF ; align=" right
" alingn="left">--%>
<table class="table ">
    <tr>
        <td width="33%" align="left">
            <a onclick="javascript:history.back(-1);"><font size="4px" color="white"><span
                    class="glyphicon glyphicon-chevron-left pull-left"></span>返回</font></a>
        </td>
        <td width="33%" align="center">
            <a href=""><font size="4px" color="white">登录</font></a>
        </td>
        <td width="33%" align="right">
        </td>
    </tr>
</table>
</div>
</br>
<form action="login" method="post">
    <div style="clear:both ">
        <div class="list-group" style="margin:10px">
            <input type="text" name="Object" class="form-control " style="height:50px;" placeholder="手机号/用户名"> </input>
            <input type="password" name="password" class="form-control " style="height:50px;" placeholder="密码"> </input>
            <br/>
            <div align="center" style="color: #a6192e">
                <c:out value="${Status}"/>
            </div>
            <div style="margin:30px;">
                <button type="submit" class="list-group-item  active  " style="text-align:center;">
                    <font color="white">确定</font></button>
            </div>
        </div>
    </div>
</form>
<div style="width:90%;   margin:0 auto;">
    <table style="width:100%;">
        <tr>
            <td style="text-align:left;"><a href="FindPassword.jsp">忘记密码？</a></td>
            <td style="text-align:right;"><a href="Register.jsp">新用户注册</a></td>
        </tr>
    </table>
</div>
<script src="js/jquery.min.js">
</script>
<script src="js/bootstrap.min.js"></script>
<script src="text/javascript"></script>
</body>
</html>

