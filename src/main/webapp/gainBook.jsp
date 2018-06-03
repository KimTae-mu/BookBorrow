<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ABEL
  Date: 2017/4/9
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>

<head>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/check.js"></script>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <style type="text/css">
        #expandMore {
            cursor: pointer;
        }

        #briefInfo {
            height: 20px;
            overflow: hidden;
        }
    </style>

</head>
<body>
<form method="post" action="gain">
    <%--isbn：<input type="text" id="isbn" name="isbn">
    <input type="submit" value="查看书籍详情" ><br>--%>


    <c:forEach var="book" items="${book}">
        <img src="${book.imagepath}"/><br>
        <c:out value="${book.title}"/><br>
        <c:out value="${book.author}"/><br>
        <pre> <c:out value="${book.summary}"/></pre>
        ><br>
        <c:out value="${book.price}"/><br>
    </c:forEach>

</form>
相关推荐：<br>

<div class=" col-xs-3 <%--col-md-4	col-sm-4--%> cate-grid grid">
<c:forEach var="sortbook" items="${sortbook}">
    <div class="thumbnail">
        <a href="<%=request.getContextPath()%>/gain.action?isbn=${sortbook.isbn}&sort=${sortbook.sort}">
            <img src="${sortbook.address}"/><br>
            <c:out value="${sortbook.bookname}"/>

        </a>
    </div>
    <br>
</c:forEach>
</div>

</body>
</html>
