<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/14
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<jsp:include page="include.jsp"></jsp:include>

  <head>
    <title>$Title$</title>
  </head>
  <body >
  <jsp:include page="header.jsp"></jsp:include>
  <div id="main">

    <ol class="breadcrumb ">
      <li title="发布时间排序" <c:if test="${order == 'newest'}"> class="active"</c:if>>
      <a href="?order=newest">最近</a>
      </li>
      <li title="点赞数排序"<c:if test="${order == 'newest'}"> class="active"</c:if>>
      <a href="?order=favors">投票</a>
      </li>
      <li title="评论次数排序" <c:if test="${order == 'newest'}"> class="active"</c:if>>
      <a href="?order=hottest">热门</a>
      </li>
    </ol>

    <%--<@contents pn=pn order=order>--%>
    <div class="row main">
      <%--<#list results.content as row>--%>
      <c:forEach items="${results}" var="row">
        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
          <div class="block">

            <a class="block-thumbnail" href="<%=basePath%>view/${row.id}">

              <div class="thumbnail-overlay"></div>
              <span class="button-zoom">
                <img src="<%=basePath%>dist/images/image-overlay-view-icon.png">
              </span>

              <%--<#if row.thumbnail??>--%>
              <%--<c:if test="${row.thumbnail!=null}">--%>
                <%--<img src="<%=basePath%>${row.thumbnail}">--%>
              <%--</c:if>--%>
              <%--<c:if test="${row.thumbnail==null}">--%>
                  <%--<img src="<%=basePath%>dist/images/spinner-overlay.png">--%>
              <%--</c:if>--%>
            </a>

            <div class="block-contents">
              <p class="tit">
                  <%--${row.title?html}--%>
                <c:if test="${row.title!=null}">
                     ${row.title}
                </c:if>

              </p>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
    <div class="row" style="width:100%; text-align:center;">
      <!-- Pager -->
      <@pager request.requestURI!"", results, 5/>
    </div>

  </div>
  <jsp:include page="footer.jsp"></jsp:include>
  </body>

</html>
