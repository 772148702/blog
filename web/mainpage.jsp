<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/15
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>

<head>
    <title>Title</title>

    <link type="text/css" rel="styleSheet"  href="css/1.css" />
</head>
<body>

   <table>
       <tr>
           <td>编号</td>
           <td>名字</td>
           <td>封面</td>
           <td>评价</td>
       </tr>
       <c:forEach items="${animations}" var="animation">
           <tr>
               <td>${animation.id}</td>
               <td>${animation.name}</td>
               <td><img src="${basePath}${animation.image_id}" class="animation_image" ></td>
               <td>${animation.description}</td>
               <td><a href="commentPage?id=${animation.id}">评价</a></td>
           </tr>
            <br/>
       </c:forEach>

   </table>
   </br></br></br>
    添加新的番剧：
   </br>
    <form action="insAnimation"   enctype="multipart/form-data"   method="post">
       番剧名称:<input type="text" name="name"/>
        </br>
        番剧描述:<input type="text" name="description"/>
        </br>
        番剧图片:<input type="file" name="file"/>
        <br/>
        <input type="submit" value="提交" />
    </form>
</body>
</html>
