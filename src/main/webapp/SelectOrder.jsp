<%--
  Created by IntelliJ IDEA.
  User: ABEL
  Date: 2017/4/16
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>个人设置</title>
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
    <meta name="viewport" content="width=device-width, initial-scale=1,
      maximum-scale=1, user-scalable=no">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <![endif]-->
</head>
<body style="background-color:#E6E6E6;">


<!--这是最上面的菜单栏-->
<div style = " background-color:#97CBFF ;align="right";"  alingn="left">


<table class="table ">
    <tr>
        <td width="33%" align="left" >
            <a onclick="javascript:history.back(-1);"><font size="4px" color="white"><span class="glyphicon glyphicon-chevron-left pull-left"></span>返回</font></a>
        </td>
        <td width="33%" align="center">
           <font size="4px" color="white">我的订单</font></li></a>
        </td>
        <td width="33%"  align="right">
            <a href="www.baidu.com"><font size="4px" color="white">编辑</font></a>
        </td>
    </tr>
</table>

</div>
</br>

<div class="input-group">

<c:forEach var="order" items="${order}">
  <%--  <span class="input-group-addon"><input type="checkbox"></span>--%>
    <div  style="width:100%; height:200px;">

        <table  style="width:100%; height:100%;" class="table " >
            <tr>
                <td rowspan="4" style="width:20%;" align="left"; valign="center"; >
                    <!--插入图片-->
                    <img src="${order.address }" ;height="235px"; width ="135px";alt="">
                </td>
                <!--插入标题-->
                <td colspan="2" >订单号：<c:out value="${order.id}"/></td>
            </tr>
            <tr>
                <!--插入内容-->
                <td >联系人：<c:out value="${order.username}"/></td>
            </tr>
            <tr>
                <td <%--rowspan="2"  colspan="2"--%>>联系方式：<c:out value="${order.phone}"/></td><br>

            </tr>
            <tr>
                <td <%--rowspan="2"  colspan="2"--%>>isbn：<c:out value="${order.isbn}"/></td>
            </tr>
        </table>
     </div>
    </c:forEach>
</div>

<div align="center" >
  <font size="4"> <c:out value="${status}"/><a href="Login.jsp"><c:out value="${status1}"/></a></font>
</div>
<div align="center" >
   <font size="4" color="#1e90ff"><c:out value="${status2}"/></font>
</div>

<!--底部导航栏-->
<nav class="navbar navbar-default navbar-fixed-bottom" >
    <div width="100%";>
        <table width="100%";>
            <tr>
                <td width="20%" ;align="left"; valign="center"; >
                    <div>
                        &nbsp;&nbsp;  <input type="checkbox">&nbsp;&nbsp;&nbsp;&nbsp; 全选
                    </div>
                </td>
                <td width="60%" ; align="right"; valign="center";></td>

                <td width="20%" ; align="right"; valign="center"; >
                    <div>
                        <a type="button" class="btn btn-success btn-lg">删除</a>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</nav>

<script src="js/jquery.min.js">
</script><script src="js/bootstrap.min.js"></script>

<script src="text/javascript"></script>
</body>
</html>

