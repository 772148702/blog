<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/15
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">


</script>


<html>
<head>
    <title>Title</title>
</head>
<body>
        <table>
            <tr>
                <td>${animation.name}</td>
                <td>${animation.description}</td>
            </tr>
            <c:forEach items="${comments}" var="comment">
                <tr>
                    <td>${comment.user_id}</td>
                    <td>${comment.comment}</td>
                    <td>${comment.grade}</td>
                </tr>

            </c:forEach>

        </table>
</br>
添加自己的评论：
        <form action="addComment" method="post">
            <input type="text" name="comment" style="height:200px;width:1080px">
        </br>
            <input type="text" name="grade" value="分数">
        </br>
            <c:choose>
                <c:when test="${sessionScope.user!=null}">
                     <input type="submit" value="提交">
                </c:when>
                <c:when test="${sessionScope.user==null}">
                     请先登陆后在评价
                </c:when>
            </c:choose>
        </form>



</body>
</html>
