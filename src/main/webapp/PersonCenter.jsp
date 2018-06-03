
<%--
  Created by IntelliJ IDEA.
  User: ABEL
  Date: 2017/5/20
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>个人中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

    <script src="BOOTSTRAP/jsbootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
   Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />



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






<!--这是最上面的菜单栏-->
<div style = " background-color:#46A3FF;align="right";"  alingn="left">


<table class="table ">
    <tr>
        <td width="33%" align="left" >
            <a onclick="javascript:history.back(-1);"><font size="4px" color="white"><span class="glyphicon glyphicon-chevron-left pull-left"></span>返回</font></a>
        </td>
        <td width="33%" align="center">
           <font size="4px" color="white">个人中心</font>
        </td>
        <td width="33%" align="center">

        </td>
    </tr>
</table>

</div>

</br>
<div style="clear:both ">
    <div class="list-group">
        <%--<button class="list-group-item btn-lg">账号管理
            <span class="glyphicon glyphicon-chevron-right pull-right"></span></button>--%>



     <a href="PersonInfo.action"  > <button class="list-group-item btn-lg">个人信息
         <span class="glyphicon glyphicon-chevron-right pull-right"></span></button></a>




      <a href="OrderInfo.action" > <button class="list-group-item btn-lg">我的订单
            <span class="glyphicon glyphicon-chevron-right pull-right"></span></button></a>




        <a href="SeeKeepBook.action"  > <button class="list-group-item btn-lg">我的收藏
            <span class="glyphicon glyphicon-chevron-right pull-right"></span></button></a>



        <a href="HistoryBook.action"  > <button class="list-group-item btn-lg">我的搜索历史
            <span class="glyphicon glyphicon-chevron-right pull-right"></span></button></a>

        <br/><br/>
        <div align="center"> <font color="#a52a2a" > <c:out value="${status}"/></font></div><br/>
        <a href="Remove.action"> <button class="list-group-item  active" style="text-align:center;"> <font color="white" >注销账号</font> </button>
        </a></div>
</div>

<script src="js/jquery.min.js">
</script><script src="js/bootstrap.min.js"></script>

<script src="text/javascript"></script>
</body>
</html>

