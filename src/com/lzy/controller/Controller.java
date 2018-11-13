package com.lzy.controller;

import com.lzy.po.Const;
import com.lzy.po.Data;
import com.lzy.po.User;
import com.lzy.po.View;
import com.lzy.service.UserService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@org.springframework.stereotype.Controller
public class Controller {
    @Resource
    private UserService userServiceImpl;


    @RequestMapping("login")
    public String login(User user, HttpSession session,Model model){
        System.out.println("进入-----------");
        User u = userServiceImpl.checklogin(user);
        if(u!=null){

            SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Date date = new Date();
            String d1 =ft.format(date);
            u.setLast_login(d1);
            session.setAttribute("user",u);
            userServiceImpl.updDateLogin(u);
             return View.REDIRECT_USER;
        } else {
            model.addAttribute("message","账号或者密码错误");
             return View.LOGIN;
        }
    }

    @RequestMapping("register")
    public String register(User user, Model model) {
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date date = new Date();
        String d1 =ft.format(date);
        user.setCreated(d1);
        user.setLast_login(d1);
        user.setAvatar(Const.AVATAR);
        System.out.println("注册"+user);
        boolean flag = userServiceImpl.insUser(user);
        Data data = new Data();

        if(flag==true) {
            data.setCode(Data.CODE_SUCCESS);
            data.setMessage("注册成功，请登陆吧");
            data.addLink("login","先去登录");
            System.out.println(data);
            model.addAttribute("data",data);
            return View.REGISTER_RESULT;
        }
        else {
            data.setCode(Data.CODE_FAILURED);
            data.setMessage("该用户名已经被注册，请换个用户名再登陆吧");
            model.addAttribute("data",data);
            return View.REGISTER;
        }
    }
}
