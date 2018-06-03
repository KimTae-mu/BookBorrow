<%--
  Created by IntelliJ IDEA.
  User: ABEL
  Date: 2017/5/20
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>找回密码</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="/css/bootstrap.css" rel="stylesheet"/>

    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <script src="/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="login/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="login/login-register.js" type="text/javascript"></script>


    <!-- 引入 Bootstrap -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
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

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <![endif]-->

    <script type="text/javascript">
        function send(){
            var mobile=$("#mobile").val();
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/send?mobile="+mobile+""
            });
        }
    </script>





</head>
<body style="">
<!--这是最上面的菜单栏-->
<div style = " background-color:#97CBFF ;align="right";"  alingn="left">
<table class="table ">
    <tr>
        <td width="33%" align="left">
            <a onclick="javascript:history.back(-1);"><font size="4px" color="white"><span
                    class="glyphicon glyphicon-chevron-left pull-left"></span>返回</font></a>
        </td>
        <td width="33%" align="center">
            <a ><font size="4px" color="white"> 找回密码</font></a>
        </td>
        <td width="33%" align="center">
            <a ><font size="4px" color="white"></font></a>
        </td>
</table>
</div>

<div style="width:92%;  margin:0 auto;">
  <%--  <dl>
        <dt>
        <h1>注册账号</h1></dt>
        <dd>注册即代表阅读并同意<a href="">使用条款和隐私政策</a></dd>
    </dl>--%>
</div>


<br/>
<form action="FindBackPassword" method="post">

    <div class="input-group" style="width:90%; margin:0 auto;">
        <div class="input-group-addon" style="width:15%;height: 45px;">手机号</div>
        <input type="text" name="mobile"  id="mobile" style="height: 45px;" class="form-control" placeholder="">
    <span class="input-group-btn">
      <%--<button class="btn tbn-success" >发送</button>--%>
        <a onclick="send()" class="btn tbn-success"><font size="4"> 发送</font></a>
    </span>
    </div>
    <br/>
    <div class="input-group" style="width:90%; margin:0 auto;">
        <div class="input-group-addon" style="width:15%;height:45px;">验证码</div>
        <input type="text" name="code" style="height: 45px;" class="form-control" placeholder="请输入手机上的验证码">
    </div>
    <br/>
    <div class="input-group" style="width:90%; margin:0 auto;">
        <div class="input-group-addon" style="width:15%;height:45px;">新密码</div>
        <input type="password" name="password" style="height: 45px;" class="form-control" placeholder="请输入新密码">
    </div>
    <br/>
    <div align="center"><font color="red"><c:out value="${status}"/></font></div>
    <div class="list-group" style="margin:10px">
        <div style="margin:30px;">
            <button class="list-group-item  active  " style="text-align:center;"><font color="white">确定</font>
            </button>
        </div>
    </div>
    <div style="width:90%;   margin:0 auto;">
        <table style="width:100%;">
            <tr>
                <td style="text-align:left;"><a href="#"></a></td>
                <td style="text-align:right;"><a href="Login.jsp">去登陆</a></td>
            </tr>
        </table>
    </div>
</form>

<script src="js/jquery.min.js">
</script>
<script src="js/bootstrap.min.js"></script>

<script src="text/javascript"></script>
</body>
</html>
