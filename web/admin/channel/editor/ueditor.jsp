<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/11/5
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<textarea id="content" name="content" class="form-control">${view.content}</textarea>
<jsp:include page="../../../include.jsp"></jsp:include>
<script type="text/javascript">
    seajs.use('editor', function(editor) {
        editor.init(function () {
            $('#content').removeClass('form-control');
        });
    });
</script>


