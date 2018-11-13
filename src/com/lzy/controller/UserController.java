package com.lzy.controller;


import com.lzy.po.Post;
import com.lzy.po.User;
import com.lzy.po.View;
import com.lzy.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.awt.print.Pageable;
import java.util.List;

@Controller

public class UserController {
    @Autowired
    private PostService postService;


    /**
     * 进入个人的主界面
     * @param session
     * @return
     */
    @RequestMapping("/user")
    public String home(HttpSession session) {
        User user = (User) session.getAttribute("user");
        if(user==null) return View.LOGIN;
        System.out.println("进入 主页面user信息:"+user.toString());
        List<Post> posts =  postService.selByUserId(user);
        System.out.println(posts);
        session.setAttribute("posts",posts);
        return View.USER_FEEDS;
    }

}
