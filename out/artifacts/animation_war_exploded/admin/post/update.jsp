<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/23
  Time: 0:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../include.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../../header.jsp"></jsp:include>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<link rel='stylesheet' media='all' href='<%=basePath%>dist/css/plugins.css'/>
<script type="text/javascript" src="<%=basePath%>dist/js/plugins.js"></script>
<div class="main">
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <span>文章编辑</span>
            </div>
            <div class="panel-body">
             <jsp:include page="../../action_message.jsp"></jsp:include>
                    <form id="qForm" class="form-horizontal form-label-left" method="post" action="<%=basePath%>post/submit" enctype="multipart/form-data">
                        <c:if test="${view!=null}">
                            <input type="hidden" name="type" value="${view.type}"/>
                            <input type="hidden" name="id" value="${view.id}"/>
                            <input type="hidden" name="thumbnail" value="${view.thumbnail}">
                        </c:if>
                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right">标题</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="title" value="${view.title}" maxlength="64" data-required >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right">预览图</label>
                            <div class="col-sm-10">
                                <input type="file" name="file" thumbnail>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right">发布到</label>
                            <div class="col-sm-3">
                                <select class="form-control" name="channelId">
                                    <%--<#list groups as row>--%>
                                        <c:forEach items="${groups}" var="row">
                                            <option value="${row.id}" <c:if test="${(view.channelId == row.id)}">> selected </c:if> ${row.name}</option>
                                        </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="desc" class="col-sm-2 control-label no-padding-right">内容:</label>
                            <div class="col-sm-10">
                                <jsp:include page="../editor/ueditor.jsp"></jsp:include>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right">标签</label>
                            <div class="col-sm-10">
                                <input type="hidden" name="tags" id="fieldTags" value="${view.tags}">
                                <ul id="tags"></ul>
                                <p class="help-block" style="font-size: 12px;">添加相关标签，用逗号或空格分隔.</p>
                            </div>
                        </div>

                        <div class="ln_solid"></div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button type="submit" class="btn btn-success">提交</button>
                            </div>
                        </div>
                    </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function() {
        $('#tags').tagit({
            singleField: true,
            singleFieldNode: $('#fieldTags')
        });

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
                content : function() {
                    return $(this).val().trim().length > 0;
                }
            },
            description : {
                content : {
                    required : '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span></button>写点内容吧</div>'
                }
            }
        });
    });
</script>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
