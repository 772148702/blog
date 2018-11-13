<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/19
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:if test="${message!=null}">
    <div class="alert alert-danger">
        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span></button>
        ${message}
    </div>
</c:if>


<c:if test="${data!=null}" >
    <c:if test="${data.code>=0}">
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span></button>
            ${data.message}
        </div>
    </c:if>
    <c:if test="${data.code<0}">
            <div class="alert alert-danger">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span></button>
                ${data.message}
            </div>
    </c:if>
</c:if>
