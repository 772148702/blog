package com.lzy.po;


//来存储路径的一些常量的类
public interface View {

    String LOGIN = "/login.jsp";
    String REGISTER = "/register.jsp";
    String REGISTER_RESULT = "/register_result.jsp";


    String REDIRECT_USER = "redirect:/user";

    String USER_FEEDS = "/user/method_feeds.jsp";
    String USER_POSTS = "/user/method_posts.jsp";
    String ROUTE_POST_EDITING ="/admin/channel/editing.jsp";

    String ROUTE_POST_INDEX= "/admin/channel/index.jsp";
    String ROUTE_POST_VIEW = "/admin/channel/view.jsp";

}
