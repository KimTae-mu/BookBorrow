<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <script type="text/javascript" src="js/jquery.min.js"></script>

    <script type="text/javascript">
        function changeImg() {
            var img = document.getElementById("img");
            img.src = "${ctx }/authImage?date=" + new Date();
            ;
        }
    </script>


</head>

<body>
<a href="Login.jsp">ni</a>
<form action="/login" type="post">


    手机号： <input type="text" id="mobile" name="mobile"><br><br>


    密 码： <input type="password" id="password" name="password"><br>

    验证码：<input type="text" id="code" name="code" width="100">
    <img id="img" src="${ctx }/authImage"/>
    <a href='#' onclick="javascript:changeImg()" style="color:black;"><label style="color:brown;">看不清？</label></a>

    <br><br>
    <input type="submit" value="确认登录"/><br>
    <div style="color: brown"><c:out value="${Status}"></c:out></div>
</form>


</body>
</html>