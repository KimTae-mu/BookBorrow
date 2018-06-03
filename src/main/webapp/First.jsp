<%@ page import="sun.misc.Request" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>伴侣</title>
    <link href="../login/tstrap3/css/bootstrap.css" rel="stylesheet"/>
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
    <%--直接启动--%>
    <%-- <script type="text/javascript">
         $().ready(function () {
             $.get("GainAllBook.from");
         });

     </script>--%>

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
                url: "send?mobile=" + mobile + ""
            });
        }
    </script>


</head>
<body>
<!-- header-section-starts -->
<div class="header" id="header" style=""><!--头部-->


    <div class="header-top">
        <div class="container">
            <div class="btn-group">

                <div <c:if test="${sta.userName==null}">
                    style="display: block"
                </c:if> <c:if test="${sta.userName!=null}">
                    style="display: none" </c:if> >
                    <a href="Login.jsp" class="btn big-login" data-toggle="modal"
                    >登录</a>
                    <a class="btn btn-success" data-toggle="modal" href="Register.jsp">注册</a>
                </div>
                <div <c:if test="${sta.userName!=null}">
                    style="display: block"
                </c:if> <c:if test="${sta.userName==null}">
                    style="display: none" </c:if>>
                    欢迎您：<%=request.getSession().getAttribute("username")%>
                </div>
            </div>
        </div>
    </div>
</div>

<%--<div class="clearfix"></div>--%>
</div>
</div>
<%--<div class="header-bottom">
    <div class="logo text-center">
        <font size="6px"> <a href="First.jsp">图书伴侣</a></font>
    </div>

    <div class="clearfix"></div>
</div>--%>

</div>

<div align="center" class="screen-shots" style="width: 100%"><!--滑来滑去的屏幕-->
    <!--sreen-gallery-cursual-->
    <div class="sreen-gallery-cursual">
        <!-- start content_slider -->
        <div id="owl-demo" class="owl-carousel">

            <div class="item">
                <div class="item-grid">
                    <div class="item-pic">
                        <a href="gain.action?isbn=9787550020535&sort=青春文学">
                            <img src="/img/wmj.jpg" alt=""/>
                            <%-- <div class="item-text text-center">
                                 <p class="s-para">午门囧事</p>
                                 <h5 class="s-heading">是一本好书</h5>
                             </div>--%>
                        </a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="item-grid">
                    <div class="item-pic">
                        <a href="gain.action?isbn=9787530214787&sort=文学">
                            <img src="/img/155.jpg" alt=""/>
                        </a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="item-grid">
                    <div class="item-pic">
                        <a href="gain.action?isbn=9787533948054&sort=文学">
                            <img src="/img/timg.jpg" alt=""/>
                        </a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="item-grid">
                    <div class="item-pic">
                        <a href="gain.action?isbn=9787218113401&sort=小说">
                            <img src="/img/80.jpg" alt=""/>
                        </a>
                    </div>
                </div>
            </div>

        </div>


    </div>
    <script src="js/lightbox.js"></script>
    <!--//sreen-gallery-cursual-->
</div>
<br/>
<br/>
<form action="ByNameOrAuthor" method="post">
    <div class="container">
        <div class="input-group input-group-lg">
            <input type="text" class="form-control" placeholder="请输入书名/作者/IBSN" name="Object">
				<span class="input-group-btn">
				<button class="btn btn-success " type="submit">搜索</button>
	           </span>
        </div>
    </div>
</form>

<div>
    <!-- requried-jsfiles-for owl -->
    <script src="js/owl.carousel.js"></script>
    <script>
        $(document).ready(function () {
            $("#owl-demo").owlCarousel({
                items: 4,
                lazyLoad: true,
                autoPlay: true,
                navigation: false,
                navigationText: false,
                pagination: true,
            });
        });
    </script>
    <div id="cate" class="categories">
        <div class="container"><!--Latest Designs-->
            <div class="cat-head">
                <h3>Book recommendation</h3>
            </div>
            <div class="categorie-grids cs-style-1">
                <div class="  col-xs-3  <%--col-md-4 col-sm-4--%> cate-grid grid">
                    <figure>
                        <div align="center" class="thumbnail">
                            <a href="gain.action?isbn=9787550299580&sort=青春文学">
                                <img src="http://img3x8.ddimg.cn/84/14/24221028-1_l_14.jpg" alt="">
                                你若安好
                            </a>
                        </div>
                    </figure>
                </div>
                <div class=" col-xs-3  <%--col-md-4 col-sm-4--%> cate-grid grid">
                    <figure>
                        <div align="center" class="thumbnail">
                            <a href="gain.action?isbn=9787540479893&sort=旅游">
                                <img src="http://img3x8.ddimg.cn/14/11/24229868-1_l_6.jpg" alt="">
                                去，你的旅行
                            </a>
                        </div>
                    </figure>
                </div>
                <div class=" col-xs-3  <%--col-md-4 col-sm-4--%> cate-grid grid">
                    <figure>
                        <div align="center" class="thumbnail">
                            <a href="gain.action?isbn=9787512509252&sort=文学">
                                <img src="http://img3x1.ddimg.cn/72/3/24243291-1_l_3.jpg" alt=""/>
                                住在自己的美好里
                            </a>
                        </div>
                    </figure>
                </div>
                <div class=" col-xs-3  <%--col-md-4 col-sm-4--%> cate-grid grid">
                    <figure>
                        <div align="center" class="thumbnail">
                            <a href="gain.action?isbn=9787508664927&sort=成功励志">
                                <img src="http://img3x4.ddimg.cn/84/5/24009564-1_l_8.jpg" alt=""/>
                                情商
                            </a>
                        </div>
                    </figure>
                </div>
                <div class=" col-xs-3  <%--col-md-4 col-sm-4--%> cate-grid grid">
                    <figure>
                        <div align="center" class="thumbnail">
                            <a href="gain.action?isbn=9787514322781&sort=成功励志">
                                <img src="http://img3x5.ddimg.cn/1/28/23469535-1_l_1.jpg" alt=""/>
                                傻瓜维特
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
                <div class=" col-xs-3 <%--col-md-4 col-sm-4--%> cate-grid grid">
                    <figure>
                        <div align="center" class="thumbnail">
                            <a href="gain.action?isbn=9787568024891&sort=计算机">
                                <img src="http://img3x2.ddimg.cn/40/26/24244942-1_l_3.jpg" alt="">
                                优雅的Ruby
                            </a>
                        </div>
                    </figure>
                </div>

                <div class=" col-xs-3 <%--col-md-4	col-sm-4--%> cate-grid grid">
                    <figure>
                        <div align="center" class="thumbnail">
                            <a href="gain.action?isbn=9787505739390&sort=青春文学">
                                <img src="http://img3x6.ddimg.cn/16/22/24162946-1_l_3.jpg" alt="">
                                世界另一个我
                            </a>
                        </div>
                    </figure>
                </div>
                <div class=" col-xs-3  <%--col-md-4 col-sm-4--%> cate-grid grid">
                    <figure>
                        <div align="center" class="thumbnail">
                            <a href="gain.action?isbn=9787550294417&sort=小说">
                                <img src="http://img3x1.ddimg.cn/90/12/25064811-1_l_3.jpg" alt=""/>
                                请你永远记得我
                            </a>
                        </div>
                    </figure>
                </div>


                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--//latest designs-->
    <!-- testimonials -->
    <div class="second-slider">
        <div class="container">
            <h3 class="tes text-center">Author</h3>
            <div id="top" class="callbacks_container">
                <ul class="rslides" id="slider4">
                    <li>
                        <div class="sec-slid-info text-center">
                            <img src="/img/1.png" alt=""/>
                            <h4>三毛</h4>
                            <p>三毛（1943—1991），女，原名陈懋（mào）平（后改名为陈平），中国现代作家</p>
                        </div>
                    </li>
                    <li>
                        <div class="sec-slid-info text-center">
                            <img src="/img/2.png" alt=""/>
                            <h4>唐家三少</h4>
                            <p>本名张威。1981年1月10日生于北京，中国内地网络小说作家,代表作《斗罗大陆》、《绝世唐门》等。</p>
                        </div>
                    </li>
                    <li>
                        <div class="sec-slid-info text-center">
                            <img src="/img/3.png" alt=""/>
                            <h4>丹.布朗</h4>
                            <p>美国作家。代表作有小说《达·芬奇密码》、《天使与魔鬼》等。</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //testimonials -->
    <!-- news -->
    <div class="news" id="blog">
        <div class="container">
            <div class="news-head text-center">
                <h3>Our Blog</h3>
                <p>Cras porttitor imperdiet volutpat nulla malesuada lectus eros ut convallis felis consectetur ut</p>
            </div>


            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div style="background-color: #0e90d2"><%--class="nav nav-tabs navbar-fixed-bottom"--%>
    <!--基本导航标签页-->
    <ul class="nav nav-tabs navbar-fixed-bottom" style="text-align:center;">
        <li style="width:30%; background-color: #00bbff"><a href="First.jsp"><i class="fa fa-home home_1"></i>首页</a>
        </li>
        <li style="width:35%;background-color: #00bbff"><a href="selcet.jsp"><i class=" fa fa-search search_2"></i>图书导航</a>
        </li>
        <li style="width:35%;background-color: #00bbff"><a href="PersonCenter.jsp"><i class="fa fa-user"></i> 个人中心</a>
        </li>
    </ul>
</div>
</body>
</html>