<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/31
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<jsp:include page="../../include.jsp"></jsp:include>
<jsp:include page="../../header.jsp"></jsp:include>
<div class="main">
<div class="row streams">
    <div class="col-xs-12 col-md-9 side-left">
        <div class="panel panel-default">
            <div class="panel-heading">
                <ul class="list-inline topic-filter">
                    <li data-toggle="tooltip" title="发布时间排序">
                        <a href="?order=newest" <c:if test="${order == 'newest'}"> class="active" </c:if>>最近</a>
                    </li>
                    <li data-toggle="tooltip" title="点赞数排序">
                        <a href="?order=favors" <c:if test="${order == 'favors'}"> class="active" </c:if>>喜好</a>
                    </li>
                    <li data-toggle="tooltip" title="评论次数排序">
                        <a href="?order=hottest" <c:if test="${order == 'hottest'}"> class="active" </c:if>>最热</a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <%--<@contents channelId=channel.id pn=pn order=order>--%>

            <div class="panel-body remove-padding-horizontal">

                <ul class="list-group row topic-list">
                    <%--<#list results.content as row>--%>
                    <c:forEach items="${result}" var="row">
                        <li class="list-group-item ">
                            <a class="reply_count_area hidden-xs pull-right" href="#">
                                <div class="count_set">
                                    <%--<span class="count_of_votes" data-toggle="tooltip" title="阅读数">${row.views}</span>--%>
                                    <span class="count_seperator">/</span>
                                    <%--<span class="count_of_replies" data-toggle="tooltip" title="回复数">${row.comments}</span>--%>
                                    <span class="count_seperator">/</span>
                                    <%--<span class="count_of_visits" data-toggle="tooltip" title="点赞数">${row.favors}</span>--%>
                                    <span class="count_seperator">|</span>
                                    <%--<abbr class="timeago">${timeAgo(row.created)}</abbr>--%>
                                </div>
                            </a>
                            <div class="avatar pull-left">
                                <a
                                <%--<a href="${base}/users/${row.author.id}">--%>
                                    <%
                                        String path = request.getContextPath();
                                        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
                                    %>
                                    <img class="media-object img-thumbnail avatar avatar-middle"
                                         src="<%=basePath%>${user.avatar}">
                                </a>
                            </div>
                            <div class="infos">
                                <div class="media-heading">
                                    <@classify row/><a href="<%=basePath%>view/${row.id}">${row.title}</a>
                                </div>
                            </div>
                        </li>
                    <%--</#list>--%>
                    </c:forEach>
                    <%--<#if  results.content?size == 0>--%>
                        <c:if test="${results.content!=null and results.content.size==0}">
                        <li class="list-group-item ">
                            <div class="infos">
                                <div class="media-heading">该目录下还没有内容!</div>
                            </div>
                        </li>
                    <%--</#if>--%>
                        </c:if>
                </ul>
            </div>

            <div class="panel-footer text-right remove-padding-horizontal pager-footer">
                <!-- Pager -->
                <@pager request.requestURI!"", results, 5/>
            </div>
        <%--</@contents>--%>
    </div>

</div>

<div class="col-xs-12 col-md-3 side-right">
    <%--<#include "/default/inc/right.ftl" />--%>
    <jsp:include page="../../user/right.jsp"></jsp:include>
</div>

</div>

<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
