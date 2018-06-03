<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: ABEL
  Date: 2017/4/11
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="js/jquery.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    欢迎您：<a:out value="${status}"></a:out>
</div>
<form action="<%=request.getContextPath()%>/order" method="post">
    借书人姓名：<input type="text" name="username"><br><br>
    isbn码：<input type="text" name="isbn"><br><br>
    手机号：<input type="text" name="phone"><br><br>
<%--    取书时间：<input type="text" name="borrowtime" value="<%=new Date()%>"><br><br>
    还书时间：<input type="text" name="returntime" value="<%=new Date()%>"><br>--%>
    <input id="sun" type="submit" value="预订">

    <a href="/html/index.jsp"><a:out value="${Status}"></a:out></a>
    <a:out value="${Status2}"></a:out>
</form>

</body>

</html>
