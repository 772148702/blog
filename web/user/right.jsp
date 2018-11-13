<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/31
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../include.jsp"></jsp:include>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="panel panel-default corner-radius panel-hot-topics">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-area-chart"></i> 热门文章</h3>
    </div>
    <div class="panel-body">
        <ul class="list" id="hots">
            <img src="<%=basePath%>dist/images/spinner.gif">
        </ul>
    </div>
</div>

<div class="panel panel-default corner-radius panel-hot-topics">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-bars"></i> 最新发布</h3>
    </div>
    <div class="panel-body">
        <ul class="list" id="latests">
            <img src="<%=basePath%>dist/images/spinner.gif">
        </ul>
    </div>
</div>

<div class="panel panel-default corner-radius panel-hot-topics">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-users "></i> 热门用户</h3>
    </div>
    <div class="panel-body remove-padding-horizontal">
        <ul class="hotusers" id="hotuser">
            <img src="<%=basePath%>dist/images/spinner.gif">
        </ul>
    </div>
</div>

<script type="text/javascript">

    var li_template = '<li>{0}. <a href="${base}/view/{1}">{2}</a></li>';

    var hotUser_li_template = '<li><a href="{1}"><img src="${base}{0}" class="avatar avatar-small"/></a></li>'

    seajs.use('sidebox', function (sidebox) {
        sidebox.init({
            latestUrl : '${base}/api/latests',
            hotUrl : '${base}/api/hots',
            hotTagUrl : '${base}/api/hot_tags',
            hotUserUrl:'${base}/api/hotusers',

            size :10,
            // callback
            onLoadHot : function (i, data) {
                return jQuery.format(li_template, i + 1, data.id, data.title);
            },
            onLoadLatest : function (i, data) {
                return jQuery.format(li_template, i + 1, data.id, data.title);
            },
            onLoadHotUser : function (i, data) {
                var url = '${base}/users/' + data.id;
                var item = jQuery.format(hotUser_li_template,data.avatar,url,data.name, data.fans);
                return item;
            }
        });
    });
</script>
</body>
</html>
