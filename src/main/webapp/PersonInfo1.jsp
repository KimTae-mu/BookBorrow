<%--
  Created by IntelliJ IDEA.
  User: ABEL
  Date: 2017/5/20
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>个人信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="BOOTSTRAP/jsbootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
   Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <meta name="viewport" content="width=device-width, initial-scale=1,
   maximum-scale=1, user-scalable=no">
    <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <meta name="viewport" content="width=device-width, initial-scale=1,
      maximum-scale=1, user-scalable=no">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <![endif]-->
</head>
<body style="background-color:#E6E6E6;">


<div style=" background-color:#0e90d2 ;align=" right
";" alingn="left">


<table class="table ">
    <tr>
        <td width="33%" align="left">
            <a onclick="javascript:history.back(-1);"><font size="4px" color="white"><span
                    class="glyphicon glyphicon-chevron-left pull-left"></span>返回</font></a>
        </td>
        <td width="33%" align="center">
            <a href="www.baidu.com"><font size="4px" color="white">个人信息</font></a>
        </td>
        <td width="33%" align="right">
        </td>
    </tr>
</table>
</div>
<div align="center"><font size="4" color="#1e90ff">
    <c:out value="${status}"/></font>
</div>
<form action="updatePerson">

    <div class="list-group">
        <div class="input-group input-group-lg">
            <div class="input-group-addon">姓名</div>
            <input type="text" name="username" class="form-control" value="${person.name}">
        </div>

        <div class="input-group input-group-lg">
            <div class="input-group-addon">性别</div>
            <input type="text" name="sex" class="form-control" value="${person.sex}">
        </div>
    </div>

    <div class="list-group">
        <div class="input-group input-group-lg">
            <div class="input-group-addon">地址</div>
            <input type="text" name="address" class="form-control" value="${person.address}">
        </div>

        <div class="input-group input-group-lg">
            <div class="input-group-addon">邮箱</div>
            <input type="text" name="mail" class="form-control" value="${person.mail}">
        </div>
    </div>
    <button class="list-group-item  active  " style="text-align:center;">
        <font color="white">更新</font>
    </button>

</form>

<script src="js/jquery.min.js">
</script>
<script src="js/bootstrap.min.js"></script>

<script src="text/javascript"></script>
</body>
</html>

