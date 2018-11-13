<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/11/5
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../include.jsp"></jsp:include>
<jsp:include page="../../header.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="main">
    <form class="form" action="<%=basePath%>post/submit" method="post" enctype="multipart/form-data">
        <div class="row">
            <div class="col-xs-12 col-md-8">
                <div id="message"></div>
                <c:if test="${view!=null}">
                    <input type="hidden" name="id" value="${view.id}"/>
                    <input type="hidden" name="authorId" value="${view.authorId}"/>
                </c:if>
                <input type="hidden" id="thumbnail" name="thumbnail" value="${view.thumbnail}"/>

                <div class="form-group">
                    <input type="text" class="form-control" name="title" maxlength="128" data-required value="${view.title}" placeholder="请输入标题">
                </div>
                <div class="form-group">
                    <select class="form-control" name="channelId" data-required>
                        <option value="">请选择栏目</option>
                        <c:forEach items="${channels}" var="row">
                            <option value="${row.id}" <c:if test="${(view.channelId == row.id)}"> selected </c:if> > ${row.ch_name}</option>
                       </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                   <jsp:include page="editor/ueditor.jsp"></jsp:include>
                </div>
            </div>
            <div class="col-xs-12 col-md-4">
                <div class="panel panel-default corner-radius help-box">
                    <div class="convent_choice">
                        <div class="andArea" id="thumbnail_image">
                            <div class="upload-btn">
                                <label>
                                    <span>点击选择一张图片</span>
                                    <input id="upload_btn" type="file" name="file" accept="image/*" title="点击添加图片">
                                </label>
                            </div>
                        </div>
                    </div>
                    <style>
                        .convent_choice {
                            height: 160px;
                            width: 100%;
                        }
                        .andArea {
                            background: url(${base}/dist/images/btn/add_img.png) no-repeat scroll center 25px rgba(0, 0, 0, 0);
                            border: 1px dashed #E6E6E6;
                            color: #CCCCCC;
                            font-size: 18px;
                            padding-top: 110px;
                            position: relative;
                            text-align: center;
                            top: 0;
                        }
                        .upload-btn {
                            margin-bottom: 9px;
                        }
                    </style>
                </div>
                <div class="panel panel-default corner-radius help-box">
                    <div class="panel-heading text-center">
                        <h3 class="panel-title">标签(用逗号或空格分隔)</h3>
                    </div>
                    <div class="panel-body">
                        <input type="hidden" name="tags" id="fieldTags" value="${view.tags}" placeholder="添加相关标签，用逗号或空格分隔 (最多4个)">
                        <ul id="tags"></ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-12">
            <div class="form-group">
                <div class="text-center">
                    <button type="submit" class="btn btn-primary" style="padding-left: 30px; padding-right: 30px;">提交</button>
                </div>
            </div>
        </div>
    </form>
    <!-- /form-actions -->
    <script type="text/javascript">
        seajs.use('post', function (post) {
            post.init();
        });
    </script>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
