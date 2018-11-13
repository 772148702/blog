package com.lzy.controller;

import com.lzy.po.Post;
import com.lzy.po.View;
import com.lzy.service.ChannelService;
import com.lzy.service.PostService;
import com.lzy.service.impl.ChannelServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class ChannelController {
    @Resource
    ChannelService channelServiceImpl;
    @Resource
    PostService postServiceImpl;


    @RequestMapping("/channel/{id}")
    public String ChannelById(@PathVariable Integer id, ModelMap model) {


        List<Post> list = channelServiceImpl.selByChannelId(id);
        model.addAttribute("result", list);
        return View.ROUTE_POST_INDEX;
    }


    @RequestMapping("/channel")
    public String aChannelById(@PathVariable Integer id, ModelMap model) {

        return "/chanel/0";
    }

    @RequestMapping("/view/{id}")
    public String ViewPost(@PathVariable Integer id, ModelMap model) {


        Post post = postServiceImpl.selById(id);
        model.addAttribute("post", post);
        return View.ROUTE_POST_VIEW;
    }

    @RequestMapping("/index")
    public String Index(ModelMap model)
    {

       List<Post> list =  channelServiceImpl.selByChannelId(0);
       model.addAttribute("results",list);
        return "index.jsp";
    }
}
