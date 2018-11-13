<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/17
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <div id="header">
      <div id="left">
          <ul>
              <li>博客</li>
              <li>问答</li>
              <li>分享</li>
          </ul>
      </div>

    <c:if test="${sessionScope.user==null}">
        <div id="right">
            <%
                String path = request.getContextPath();
                String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
            %>
            <ul>
            <li><a href="<%=basePath%>login.jsp" class="btn btn-default btn-sm signup">登录</a></li>

            <li><a href="<%=basePath%>register.jsp" class="btn btn-primary btn-sm signup">注册</a></li>
            </ul>
        </div>
    </c:if>

    <c:if test="${sessionScope.user!=null}">
            <div id="right">
                <ul>
                <li>
                    <%
                        String path = request.getContextPath();
                        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
                    %>
                    <a href="<%=basePath%>post/editing" class="plus"><i class="icon icon-note"></i> 写文章</a>
                </li>
                <li class="dropdown">

                    <a href="#" class="user dropdown-toggle" data-toggle="dropdown">
                        <%--<img class="img-circle" src="<%=basePath%>${user.avatar}">--%>
                        <span>${user.name}</span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li>
                            <a href="${base}/user">我的主页</a>
                        </li>
                        <li>
                            <a href="${base}/user/profile">编辑资料</a>
                        </li>
                        <%--<@shiro.hasPermission name="admin">--%>
                        <li><a href="${base}/admin">后台管理</a></li>
                    <%--</@shiro.hasPermission>--%>
                <li><a href="${base}/logout">退出</a></li>
                </ul>
                </li>
                </ul>
            </div>
    </c:if>

  </div>