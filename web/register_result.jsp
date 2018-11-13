<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/19
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="include.jsp"></jsp:include>

    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="main">

    <div class="row">
        <div class="col-md-4 col-md-offset-4 floating-box">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">操作提示</h3>
                </div>
                <div class="panel-body">
                    <div id="message"><jsp:include page="action_message.jsp"/></div>
                    <div class="text-center">
                        <c:forEach items="${data.links}" var="row" >
                            <a href="${row.link}" class="btn btn-success">${row.text}</a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
