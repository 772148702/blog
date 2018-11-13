package com.lzy.controller;


import com.lzy.po.Channel;
import com.lzy.po.Post;
import com.lzy.po.User;
import com.lzy.po.View;
import com.lzy.service.ChannelService;
import com.lzy.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/post")
public class PostController {
    @Autowired
    private PostService postServiceImpl;
    @Autowired
    private ChannelService channelServiceImpl;


    @RequestMapping("/editing")
    public String view(ModelMap model)
    {

        List<Channel> list = channelServiceImpl.selAllChannel();
        System.out.println(list);
        model.addAttribute("channels",list);
        return  View.ROUTE_POST_EDITING;
    }

    @RequestMapping("/submit")
    public String post(Post post, @RequestParam(value="file",
    required = false)MultipartFile file,RedirectAttributes attr,HttpSession session)
    {
        System.out.println(post);
        User user  = (User) session.getAttribute("user");
        if(user==null)
        {
            return View.LOGIN;
        }
        post.setUser_id(user.getId());
        postServiceImpl.insPost(post);
      //  attr.addFlashAttribute("user", user);
        return View.REDIRECT_USER;
    }





}
