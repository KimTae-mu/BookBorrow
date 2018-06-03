<%@ page import="org.kim.entity.Book" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>书籍详情</title>

    <meta charset="utf-8"/>

    <link rel="stylesheet" type="text/css" href="css/xcConfirm.css"/>
    <script src="js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
    <style type="text/css">
        .sgBtn {
            width: 135px;
            height: 35px;
            line-height: 35px;
            margin-left: 10px;
            margin-top: 10px;
            text-align: center;
            background-color: #0095D9;
            color: #FFFFFF;
            float: left;
            border-radius: 5px;
        }
    </style>
    <script type="text/javascript">
        $(function () {


            $("#btn6").click(function () {
                var txt = "请输入";
                window.wxc.xcConfirm(txt, window.wxc.xcConfirm.typeEnum.input, {
                    onOk: function (v) {
                        console.log(v);
                    }
                });
            });

        });
    </script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="info/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="info/js/jquery.min.js"></script>
    <script src="info/js/bootstrap.min.js"></script>
    <!-- Custom Theme files -->
    <link href="info/css/style.css" rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
    <!----font-Awesome----->
    <link href="info/css/font-awesome.css" rel="stylesheet">
    <!----font-Awesome----->


</head>
<body>


<!-- ============================  Navigation Start =========================== -->

<div style=" background-color:#46A3FF;align=" right
";" alingn="left">
<table class="table ">
    <tr>
        <td width="33%" align="left">
            <a onclick="javascript:history.back(-1);"><font size="4px" color="white"><span
                    class="glyphicon glyphicon-chevron-left pull-left"></span>返回</font></a>
        </td>
        <td width="33%" align="center">
            <font size="4px" color="white">图书详情</font>
        </td>
        <td width="33%" align="center">
        </td>
    </tr>
</table>
</div>
<!-- ============================  Navigation End ============================ -->
<div class="grid_3">
    <c:forEach items="${book}" var="book">

    <div class="container ">
            <%-- <div class="breadcrumb1">
                 <ul>
                     <a href="index.html"><i class="fa fa-home home_1"></i></a>
                     <span class="divider">&nbsp;|&nbsp;</span>
                     <li class="current-page">图书详情</li>
                 </ul>
             </div>--%>
        <div class="profile">
            <div class="col-md-8 col-xs-12   profile_left">
                <div class="col_3">
                    <div class="col-sm-4 row_2">
                        <div class="flexslider">
                            <ul class="slides" align="center">
                                <li data-thumb="${book.imagepath}">
                                    <img src="${book.imagepath}" style=" hight:150px; width:100px; "/>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <br/>
                    <table class="table_working_hours" align="center">


                        <tbody align="center">
                        <tr class="opened_1">
                            <td class="day_label"><font style="color:#8B636C">书名 :</font></td>
                            <td class="day_value">${book.title}</td>
                        </tr>
                        <tr class="opened">
                            <td class="day_label"><font style="color:#8B636C">作者 :</font></td>
                            <td class="day_value">${book.author}</td>
                        </tr>
                        <tr class="opened">
                            <td class="day_label"><font style="color:#8B636C">出版社 :</font></td>
                            <td class="day_value">${book.publisher}</td>
                        </tr>
                        <tr class="opened">
                            <td class="day_label"><font style="color:#8B636C">出版年 :</font></td>
                            <td class="day_value">${book.pubdate}</td>
                        </tr>
                        <tr class="opened">
                            <td class="day_label"><font style="color:#8B636C">定价 :</font></td>
                            <td class="day_value">￥${book.price}</td>
                        </tr>
                        <tr class="closed">
                            <td class="day_label"><font style="color:#8B636C">ISBN :</font></td>
                            <td class="day_value closed"><span>${book.isbn13}</span></td>
                        </tr>
                        <tr class="closed">
                          <td class="day_label">
                                 <a href="order.action?isbn=${book.isbn13}"><input  class="btn btn-info" type="submit" value="预订"/></a>
                            </td>
                            <td class="day_value closed">
                                <a href="KeepBook.action?isbn=${book.isbn13}">  <button class="btn btn-info">收藏</button></a>
                            </td>
                        </tr>

                        </tbody>
                    </table>

                </div>

            </div>
            <div class="col_4">
                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                    <ul id="myTab" class="nav nav-tabs nav-tabs1" role="tablist">
                        <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab"
                                                                  data-toggle="tab" aria-controls="home"
                                                                  aria-expanded="true">书籍简介</a></li>
                        <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab"
                                                   aria-controls="profile">简评</a></li>
                        <li role="presentation"><a href="#profile1" role="tab" id="profile-tab1" data-toggle="tab"
                                                   aria-controls="profile1">相关推荐</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                            <div class="tab_box">
                                <p>${book.summary}</p>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                            <div class="tab_box">
                                <p>蒋勋先生可以将所有的事物加上自己美学的理解，而所有的这些理解也因此变得不同寻常。这本书对于人性与社会的思考非常透彻，并且最终找到了一个表征这些思考的出口——孤独。</p>
                                <hr width="80%" align="conter" size="5px">
                                <p>从一粒沙子看到一个世界，从一朵野花看到一个天堂。</p>
                                <hr width="80%" align="conter" size="5px">
                                <p>蒋勋先生可以将所有的事物加上自己美学的理解，而所有的这些理解也因此变得不同寻常。这本书对于人性与社会的思考非常透彻，并且最终找到了一个表征这些思考的出口——孤独。</p>
                                <hr width="80%" align="conter" size="5px">
                                <p>蒋勋先生可以将所有的事物加上自己美学的理解，而所有的这些理解也因此变得不同寻常。这本书对于人性与社会的思考非常透彻，并且最终找到了一个表征这些思考的出口——孤独。</p>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="profile1" aria-labelledby="profile-tab1">
                            <div id="cate" class="categories">
                                <div class="container"><!--Latest Designs-->
                                    <div class="categorie-grids cs-style-1">
                                        <c:forEach items="${sortbook}" var="sortbook">
                                            <div class=" col-xs-6 <%--col-md-4 col-sm-4--%> cate-grid grid">
                                                <figure>
                                                    <div align="center" class="thumbnail">
                                                        <a href="gain.action?isbn=${sortbook.isbn}&sort=${sortbook.sort}">
                                                            <img src="${sortbook.address}" alt="">
                                                            <div class="caption" style=" white-space:nowrap;overflow:hidden;text-overflow:ellipsis; " >
                                                                <font color="#1e90ff"> <c:out value="${sortbook.bookname}"/></font>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </figure>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
</c:forEach>
</div>
<!-- FlexSlider -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
<script>
</script>
<%--<div  style="background-color: #0e90d2" >
    <!--基本导航标签页-->
    <ul class="nav nav-tabs navbar-fixed-bottom" style="text-align:center;">
        <li style="width:50%;"><a href="/html/First.jsp">预订</a></li>
        <li style="width:50%;"><a href="/html/selcet.jsp">收藏</a></li>
    </ul>
</div>--%>

</body>
</html>	