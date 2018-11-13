<%--
  Created by IntelliJ IDEA.
  User: me
  Date: 2018/10/17
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div class="footer">
    <div class="container">
        <%--<div class="footer-col footer-col-logo hidden-xs hidden-sm">--%>
            <%--<img src="${base}/theme/default/images/logo.png" alt="Mblog"/>--%>
        <%--</div>--%>
        <div class="footer-col footer-col-copy">
            <ul class="footer-nav hidden-xs">
                <li class="menu-item"><a href="${base}/about">关于我们</a></li>
                <li class="menu-item"><a href="${base}/joinus">联系我们</a></li>
                <li class="menu-item"><a href="${base}/faqs">常见问题</a></li>
                <li>

                </li>
            </ul>
            <div class="copyright">
                <span>${site_copyright}. ${site_icp}</span>
            </div>
        </div>
        <div class="footer-col footer-col-sns hidden-xs hidden-sm">
            <div class="footer-sns">
                <span>Powered By <a href="http://mtons.com/?copyright" target="_blank">Mtons</a></span>
            </div>
        </div>
    </div>


</div>