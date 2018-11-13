<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/23
  Time: 0:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>dist/js/jquery.form.min.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>dist/vendors/tinymce/tinymce.min.js"></script>

<textarea id="view_content" name="content" rows="5" data-required data-describedby="message" data-description="content">${view.content}</textarea>

<script type="text/javascript">
    $(function () {
        tinymce.init({
            selector: "#view_content",
            theme: 'modern',
            upload_image_url: "<%=basePath%>/post/upload", //配置的上传图片的路由
            height: 400,
            plugins: [
                'advlist autolink autosave lists link image print anchor codesample',
                'searchreplace visualblocks code fullscreen textcolor colorpicker textpattern uploadimage',
                'contextmenu paste'
            ],
            toolbar: "undo redo | formatselect bold underline blockquote alignleft aligncenter alignright " +
            "forecolor bullist numlist link unlink uploadimage codesample removeformat fullscreen ",
            menubar: false,
            language: "zh_CN",
            statusbar : false,
            body_class: 'markdown-body',
            codesample_dialog_width: '600',
            codesample_dialog_height: '400',
            block_formats: 'Paragraph=p;标题1=h4;标题2=h5;标题3=h6;Preformatted=pre',

            content_css: [
                '<%=basePath%>dist/vendors/bootstrap/css/bootstrap.min.css',
                '<%=basePath%>theme/default/css/editor.css',
            ]
            //参考网站 https://www.tinymce.com/
        });
    })
</script>