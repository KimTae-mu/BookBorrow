<%--
  Created by IntelliJ IDEA.
  User: ABEL
  Date: 2017/5/11
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>图书伴侣</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">


    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

    <script src="BOOTSTRAP/jsbootstrap.min.js"></script>


    <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <![endif]-->

    <link href="login/tstrap3/css/bootstrap.css" rel="stylesheet"/>
    <link href="login/login-register.css" rel="stylesheet"/>
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <script src="login/jquery/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="login/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="login/login-register.js" type="text/javascript"></script>

    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="css/owl.carousel.css" rel="stylesheet">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="css/lightbox.css" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Interior Design Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
      Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- for bootstrap working -->
    <script src="js/bootstrap.js"></script>
    <!-- //for bootstrap working -->
    <!-- web fonts -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <!-- responsiveslides -->
    <script src="js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });
        });
    </script>
    <!-- responsiveslides -->
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
            });
        });
    </script>


</head>
<body>

<%--
<div class="header-bottom">


    <div class="logo text-center">
        <font size="4px"><a href="index.html">图书伴侣</a></font>
    </div>
    <!-- navigation -->


    <div class="navigation">


        <div class="container">
            <nav class="navbar navbar-default">

                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed " data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/html/First.jsp">首页 <span class="sr-only">(current)</span></a></li>
                        <li>
                            <a href="/html/selcet.jsp">&lt;%&ndash;<a href="<%=request.getContextPath()%>/GainAllBook.action">&ndash;%&gt;图书导航</a>
                        </li>
                        <li><a href="/html/SelectOrder.jsp">我的订单</a></li>
                        <li><a href="/html/Boo.jsp">个人信息</a></li>
                        &lt;%&ndash;class="scroll"&ndash;%&gt;
                        <li><a href="/html/Boo.jsp">我的轨迹</a></li>
                    </ul>

                </div><!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
    <!-- //navigation -->


</div>--%>

<div style = " background-color:#46A3FF;align="right";"  alingn="left">

<table class="table ">
    <tr>
        <td width="33%" align="left" >
            <a onclick="javascript:history.back(-1);"><font size="4px" color="white"><span class="glyphicon glyphicon-chevron-left pull-left"></span>返回</font></a>
        </td>
        <td width="33%" align="center">
            <font size="4px" color="white">我的收藏</font>
        </td>
        <td width="33%" align="center">

        </td>
    </tr>
</table>

</div>


<div style="width:100%; height:110px;">
    <div align="center"><font size="4">
        <c:out value="${status}"/>
        <a href="Login.jsp">
            <c:out value="${status1}"/>
        </a>
    </font>
    </div>
    <c:forEach var="Result" items="${Result}">
        <table style="width:100%; height:50%;" class="table">
            <tr>
                <td rowspan="4" style="width:20%;">
                    <!--插入图片-->

                    <a href="gain.action?isbn=${Result.isbn}&sort=${Result.sort}">
                        <img src="${Result.address}" height="100px" width="135" alt="">
                    </a>
                </td>
                <!--插入标题-->
                <td colspan="2">书名：${Result.bookname}</td>

            </tr>
            <tr>
                <!--插入内容-->
                <td>作者：${Result.actor}</td>

            </tr>

        </table>

    </c:forEach>
</div>
<%--&lt;%&ndash;<br/>--%>
<hr width="100%">

<script src="js/jquery.min.js">
</script>
<script src="js/bootstrap.min.js"></script>
<script src="text/javascript"></script>
</body>
</html>

