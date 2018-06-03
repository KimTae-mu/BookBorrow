<%@ page contentType="text/html;charset=UTF-8" language="java" %><%--isELIgnored="true"--%>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>


<%--<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>--%>

<!DOCTYPE html>
<html>
<head>
    <title>伴侣查询</title>

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

    <script type="text/javascript">
        function changeImg() {
            var img = document.getElementById("img");
            img.src = "${ctx}/authImage?date=" + new Date();
            ;
        }
    </script>

    <script type="text/javascript">
        function send() {
            var mobile = $("#mobile").val();
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/send?mobile=" + mobile + ""
            });

        }
    </script>



</head>
<body>
<!-- header-section-starts -->
<div style=" background-color:#46A3FF;align=" right
";" alingn="left">
<table class="table ">
    <tr>
        <td width="33%" align="left">
            <a onclick="javascript:history.back(-1);"><font size="4px" color="white"><span
                    class="glyphicon glyphicon-chevron-left pull-left"></span>返回</font></a>
        </td>
        <td width="33%" align="center">
            <font size="4px" color="white">图书导航</font>
        </td>
        <td width="33%" align="center">
        </td>
    </tr>
</table>
</div>
<div class="clearfix"></div>
</div>
</div>
<div class="header-bottom">
    <br/>

    <form action="<%=request.getContextPath()%>/ByNameOrAuthor" method="post">
        <div class="container">
            <div class="input-group input-group-lg">


                <input type="text" class="form-control" placeholder="请输入书名/作者/IBSN" name="Object">
				<span class="input-group-btn">
				<button class="btn btn-success " type="submit">搜索</button>
	           </span>

            </div>

        </div>
    </form>

    <br/>
    <ul class="nav nav-tabs">
        <li class="active  "><a href="#">图书列表</a></li>
        <li class="dropdown navbar-right">
            <a href="#" class="dropdown-toggle " data-toggle="dropdown">
                筛选
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
                <li><a href="BookSort.action?sort=文学">文学</a></li>
                <li><a href="BookSort.action?sort=小说">小说</a></li>
                <li class="divider"></li>
                <li><a href="BookSort.action?sort=管理">管理</a></li>
                <li><a href="BookSort.action?sort=旅游">旅游</a></li>
                <li class="divider"></li>
                <li><a href="BookSort.action?sort=计算机">计算机</a></li>
                <li><a href="BookSort.action?sort=成功励志">成功励志</a></li>
                <li><a href="BookSort.action?sort=青春文学">青春文学</a></li>
            </ul>
        </li>
    </ul>
    <br/><br/>
    <div class="container">
        <div class=" col-xs-3  <%--col-md-4 col-sm-4--%> cate-grid grid">
            <figure>
                <div align="center" class="thumbnail">
                    <a href="gain.action?isbn=9787559400239&sort=小说">
                        <img src="http://img3x7.ddimg.cn/8/22/24242237-1_l_5.jpg" alt="">
                        七杀简史
                    </a>
                </div>
            </figure>
        </div>

        <div class=" col-xs-3  <%--col-md-4 col-sm-4--%> cate-grid grid">
            <figure>
                <div align="center" class="thumbnail">
                    <a href="gain.action?isbn=9787508643076&sort=成功励志">
                        <img src="http://img3x6.ddimg.cn/51/11/23449686-1_l_4.jpg" alt=""/>
                        瞬变
                    </a>
                </div>
            </figure>
        </div>


        <div class=" col-xs-3  <%--col-md-4 col-sm-4--%> cate-grid grid">
            <figure>
                <div align="center" class="thumbnail">
                    <a href="gain.action?isbn=9787550019294&sort=青春文学">
                        <img src="http://img3x2.ddimg.cn/39/5/24154752-1_l_8.jpg" alt=""/>
                        犹待昭阳
                    </a>
                </div>
            </figure>
        </div>


        <div class=" col-xs-3  <%--col-md-4 col-sm-4--%> cate-grid grid">
            <figure>
                <div align="center" class="thumbnail">

                    <a href="gain.action?isbn=9787539998756&sort=青春文学">
                        <img src="http://img3x8.ddimg.cn/23/17/24170378-1_l_2.jpg" alt=""/>
                        只记花开不记年
                    </a>

                </div>
            </figure>
        </div>


        <div class=" col-xs-3 <%--col-md-4 col-sm-4--%> cate-grid grid">
            <figure>
                <div align="center" class="thumbnail">
                    <a href="gain.action?isbn=9787555243724&sort=小说">
                        <img src="http://img3x8.ddimg.cn/82/1/24192118-1_l_3.jpg" alt="">
                        意外生还
                    </a>
                </div>
            </figure>
        </div>

    </div>

</div>
<br/><br/>

   <div  style="background-color: #0e90d2" ><%--class="nav nav-tabs navbar-fixed-bottom"--%>
    <!--基本导航标签页-->
    <ul class="nav nav-tabs navbar-fixed-bottom" style="text-align:center;">
        <li style="width:30%; background-color: #00bbff"><a href="/First.jsp"><i class="fa fa-home home_1"></i>首页</a></li>
        <li style="width:35%;background-color: #00bbff"><a href="/selcet.jsp"><i class=" fa fa-search search_2"></i>图书导航</a></li>
        <li style="width:35%;background-color: #00bbff"> <a href="/PersonCenter.jsp"><i class="fa fa-user"></i> 个人中心</a></li>
    </ul>
   </div>
  </body>
</html>