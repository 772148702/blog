<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/19
  Time: 0:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<base href=" <%=basePath%>">
<base src=" <%=basePath%>">
</head>
<link rel="stylesheet" media='all' href="<%=basePath%>dist/vendors/bootstrap/css/bootstrap.min.css">
<link rel='stylesheet' media='all' href="<%=basePath%>dist/vendors/share.js/css/share.min.css"/>

<link rel='stylesheet' media='all' href="<%=basePath%>theme/default/css/style.css"/>
<link rel='stylesheet' media='all' href="<%=basePath%>theme/default/css/editor.css"/>
<link rel='stylesheet' media='all' href="<%=basePath%>dist/css/plugins.css"/>

<link rel='stylesheet' media='all' href="<%=basePath%>dist/vendors/simple-line-icons/css/simple-line-icons.css"/>
<link rel='stylesheet' media='all' href="<%=basePath%>dist/vendors/font-awesome/css/font-awesome.min.css"/>
<link rel='stylesheet' media='all' href="<%=basePath%>dist/vendors/pace/themes/pace-theme-minimal.css"/>

<link rel="stylesheet" media="all" href="<%=basePath%>dist/vendors/highlight/styles/github.css"/>

<script type="text/javascript" src="<%=basePath%>dist/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>dist/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>dist/vendors/layer/layer.js"></script>
<script type="text/javascript" src="<%=basePath%>dist/vendors/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath%>dist/vendors/validate/jquery-validate.js"></script>


<link rel="stylesheet" href="<%=basePath%>dist/css/1.css" type="text/css" />



<script type="text/javascript" src="<%=basePath%>theme/default/js/utils.js"></script>

<script src="<%=basePath%>dist/vendors/pace/pace.min.js"></script>
<script type="text/javascript" src="<%=basePath%>theme/default/js/sea.js"></script>
<script type="text/javascript" src="<%=basePath%>theme/default/js/sea.config.js"></script>

<script type="text/javascript">
    var _base_path = '<%=basePath%>';

    window.app = {
        base: '<%=basePath%>',
        LOGIN_TOKEN: '${profile.id}'
    };

    //window.UEDITOR_HOME_URL = '${base}/dist/vendors/ueditor/';
</script>


<!-- Favicons -->
<link rel="apple-touch-icon-precomposed" href="http://mtons.com/dist/images/logo.png"/>
<link rel="shortcut icon" href="http://mtons.com/dist/images/logo.png"/>