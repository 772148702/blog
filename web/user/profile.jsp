<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/20
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<jsp:include page="../include.jsp"></jsp:include>
<jsp:include page="../header.jsp"></jsp:include>
<div id="main">
<div class="panel panel-default stacked">
    <div class="panel-heading">
        <ul class="nav nav-pills account-tab">
            <li class="active"><a href="profile">基本信息</a></li>
            <li><a href="avatar">修改头像</a></li>
            <li><a href="password">修改密码</a></li>
        </ul>
    </div>
    <div class="panel-body">
        <div id="message">
            <jsp:include page="../action_message.jsp"></jsp:include>
        </div>
        <div class="tab-pane active" id="profile">
            <form id="pf" action="profile" method="post" class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-lg-3" for="nickname">昵称</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control" name="name" value="${view.name}" maxlength="7" data-required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3" for="email">邮箱地址</label>
                    <div class="col-lg-4">
                        <span class="form-control">${view.email}</span>
                    </div>
                    <div class="col-lg-3" style="padding-top: 6px;">
                        <c:if test="${(view.activeEmail == 1)}">
                            <span class="label label-success">已验证</span>
                        </c:if>
                        <c:if test="${(view.activeEmail != 1)}">
                                <span class="label label-warning">未验证</span>
                        </c:if>
                        <a href="${base}/user/email">修改邮箱</a>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3" for="nickname">个性签名</label>
                    <div class="col-lg-6">
                        <textarea name="signature" class="form-control" rows="3" maxlength="128">${view.signature}</textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">提交</button>
                    </div>
                </div><!-- /form-actions -->
            </form>
        </div>
    </div><!-- /panel-content -->
</div><!-- /panel -->

<script type="text/javascript">
    $(function () {
        $('#pf').validate({
            onKeyup : true,
            onChange : true,
            eachValidField : function() {
                $(this).closest('div').removeClass('has-error').addClass('has-success');
            },
            eachInvalidField : function() {
                $(this).closest('div').removeClass('has-success').addClass('has-error');
            }
        });
    });
</script>
</div>
<jsp:include page="../footer.jsp"></jsp:include>