package com.lzy.controller;


import com.lzy.po.Animation;
import com.lzy.service.AnimationService;
import com.lzy.service.UserService;
import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpRequest;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@org.springframework.stereotype.Controller
public class AnimationController {
    @Resource
    private AnimationService animationServicImpl;

    @RequestMapping("/main")
    public String dealmain(ServletRequest request)
    {
       List<Animation> list =  animationServicImpl.selAllAn();
        System.out.println(list);

        request.setAttribute("animations",list);
       return "mainpage.jsp";
    }

    @RequestMapping("/insAnimation")
    public String insAnimation(MultipartFile file,Animation animation,HttpSession session) throws IOException {
        System.out.println("insAnimation");
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf("."));

      if(suffix.equalsIgnoreCase(".png")){
          String uuid = UUID.randomUUID().toString();
          String base = session.getServletContext().getRealPath("/");
          FileUtils.copyInputStreamToFile(file.getInputStream (), new File(base+"/images/"+uuid+suffix));

          animation.setImage_id("images/"+uuid+suffix);
          System.out.println(animation);
          animationServicImpl.insAnimation(animation);
          return "main";
      } else {
          return "error.jsp";
      }
    }


}
