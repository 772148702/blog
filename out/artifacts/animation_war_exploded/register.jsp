<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/19
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<jsp:include page="include.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<div id="main">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 floating-box">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">注册</h3>
                </div>
                <div class="panel-body">
                    <jsp:include page="action_message.jsp"></jsp:include>
                    <div id="message">
                    </div>
                    <form method="post" action="register" accept-charset="UTF-8">
                        <div class="form-group ">
                            <label class="control-label" for="uname" >用户名</label>
                            <input class="form-control" name="uname" id="uname" type="text" data-required data-conditional="username" data-description="username" data-describedby="message">
                        </div>
                        <div class="form-group ">
                            <label class="control-label" for="email">邮箱</label>
                            <input class="form-control" name="email" id="email" type="text" data-required data-conditional="email" data-description="email" data-describedby="message">
                        </div>
                        <div class="form-group ">
                            <label class="control-label" for="name">昵称</label>
                            <input class="form-control" name="name" id="name" type="text" data-required>
                        </div>
                        <div class="form-group ">
                            <label class="control-label" for="password" >密码</label>
                            <input class="form-control" id="password" name="pwd"  type="password" maxlength="18" placeholder="新密码" data-required>
                        </div>
                        <div class="form-group ">
                            <label class="control-label"  for="password2">确认密码</label>
                            <input class="form-control" name="password2" type="password" id="password2" maxlength="18" placeholder="请再输入一次密码" data-required data-conditional="confirm" data-describedby="message" data-description="confirm">
                        </div>
                        <button type="submit" class="btn btn-success btn-block">
                            提交
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(function(){
            $('form').validate({
                onKeyup : true,
                onChange : true,
                eachValidField : function() {
                    $(this).closest('div').removeClass('has-error').addClass('has-success');
                },
                eachInvalidField : function() {
                    $(this).closest('div').removeClass('has-success').addClass('has-error');
                },
                conditional : {
                    confirm : function() {
                        return $(this).val() == $('#password').val();
                    },
                    email : function() {
                        return /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(this).val());
                    },
                    username : function() {
                        return /^[a-z][a-z_0-9]{4,18}$/i.test($(this).val());
                    }
                },
                description : {
                    confirm : {
                        conditional : '<div class="alert alert-danger">两次输入的密码不一致</div>'
                    },
                    email : {
                        conditional : '<div class="alert alert-danger">邮箱格式不合法</div>'
                    },
                    username : {
                        conditional : '<div class="alert alert-danger">只能是字母/字母+数字的组合,不少于5位</div>'
                    }
                }
            });
        })


        $("#email").blur(
            function () {
                return /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(this).val());
            }
        )
        $("#password").blur(
            function () {
               return  $("#password2").val()==$(this).val()
            }
        )

    </script>


</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
