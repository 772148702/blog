<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/19
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <jsp:include page="include.jsp"></jsp:include>
    <jsp:include page="header.jsp"></jsp:include>

    <div id="main">
        <div class="row">
            <div class="col-md-4 col-md-offset-4 floating-box">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">请登录</h3>
                    </div>
                    <div class="panel-body">
                        <jsp:include page="action_message.jsp"></jsp:include>
                        <form method="POST" action="login" accept-charset="UTF-8">
                            <div class="form-group ">
                                <label class="control-label" >账号</label>
                                <input class="form-control" name="uname" type="text" required>
                            </div>
                            <div class="form-group ">
                                <label class="control-label">密码</label>
                                <input class="form-control" name="pwd" type="password" required>
                            </div>
                            <div class="form-group ">
                                <label>
                                    <input type="checkbox" name="rememberMe" value="1"> 记住登录？
                                </label>
                            </div>
                            <button type="submit" class="btn btn-success btn-block">
                                登录 Use it
                            </button>

                            <hr>

                            <fieldset class="form-group">
                                <div class="alert alert-info">
                                    使用以下方法注册或者登录（<a class="forget-password" href="${base}/forgot/apply">忘记密码？</a>）
                                </div>
                                <a class="btn btn-default btn-block" href="${base}/oauth/callback/call_weibo">
                                    <i class="fa fa-weibo"></i> 微博帐号登录
                                </a>
                                <a class="btn btn-default btn-block" href="${base}/oauth/callback/call_qq">
                                    <i class="fa fa-qq"></i> QQ帐号登录
                                </a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
