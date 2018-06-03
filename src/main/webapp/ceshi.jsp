<%--
  Created by IntelliJ IDEA.
  User: ABEL
  Date: 2017/5/17
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
<div <c:if test="${sta.userName==null}">
            style="display: block"
        </c:if> <c:if test="${sta.userName!=null}">
    style="display: none" </c:if> >
    <a href="/index.jsp"><input type="button" value="登录"/> </a>
</div>
<div <c:if test="${sta.userName!=null}">
    style="display: block"
</c:if> <c:if test="${sta.userName==null}">
    style="display: none" </c:if>>
    欢迎您：<c:out value="${sta.userName}"/></div>--%>
<%--<input type="button" id="btn" value="免费获取验证码" onclick="settime(this)" />
<script type="text/javascript">
    var countdown=10;
    function settime(val) {
      /*  var mobile=$("#mobile").val();*/
        if (countdown == 0) {
            val.removeAttribute("disabled");
            val.value="免费获取验证码";
            countdown = 10;
        } else {
            val.setAttribute("disabled", true);
            val.value="重新发送(" + countdown + ")";
            countdown--;
        }
        setTimeout(function() {
            settime(val)
        },1000)
    }
</script>--%>


</body></html>

</body>




</html>
