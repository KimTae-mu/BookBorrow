<%--
  Created by IntelliJ IDEA.
  User: ABEL
  Date: 2017/4/20
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <title>polling test</title>
</head>
<body>
<div id="message"></div>
</body>
<script type="text/javascript">
    var polling = function () {
        $.get("polling.from", function (data) {
            $("#message").append(data + "<br>");
        });
    };
    interval = setInterval(polling, 3000);
</script>
</html>
