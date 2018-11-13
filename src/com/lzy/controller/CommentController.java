package com.lzy.controller;

import com.lzy.po.*;
import com.lzy.service.AnimationService;
import com.lzy.service.CommentService;
import com.lzy.service.PostService;
import com.lzy.service.UserService;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.util.HtmlUtils;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Resource
    private CommentService commentServiceImpl;
    @Resource
    private UserService userServiceImpl;
    @Resource
    private PostService postServiceImpl;

    @RequestMapping("/list/{toId}")
    public  @ResponseBody
    List<CommentVO> dealCommentPage(@PathVariable int toId){

        System.out.println("ji ru jin ru=========================");
        List<Comment> comments = commentServiceImpl.selByPostId(toId);
        List<CommentVO> commentVos  = new ArrayList<>();
        for (Comment cos:comments)
        {
            commentVos.add(convert(cos));
        }
        System.out.println(commentVos);

        return commentVos;
    }
    CommentVO convert(Comment cos)
    {
        CommentVO cvo = new CommentVO(cos);
        cvo.setAuthor(userServiceImpl.selById(cos.getAuthor_id()));

       if(cos.getPid()>0)
       {
           Comment tmp = commentServiceImpl.selById(cos.getPid());
           cvo.setParent(convert(tmp));
       }



        return cvo;
    }
    @RequestMapping("/submit")
    public @ResponseBody
    Data addComment(long toId,String text ,HttpSession session,HttpServletRequest request) {
        System.out.println("注入之前："+ text);

        Data data = Data.failure("操作失败");
        long pid = ServletRequestUtils.getIntParameter(request, "pid", 0);

        User u = (User) session.getAttribute("user");
        if(u==null) {
            data = Data.failure("请先登录在进行操作");
            return  data;
        }
        if (toId > 0 && StringUtils.isNotEmpty(text)) {
//            AccountProfile up = getSubject().getProfile();

//            CommentVO c = new CommentVO();
//            c.setPid(toId);
//            c.setContent(HtmlUtils.htmlEscape(text));
//            c.setAuthorId(up.getId());
//
//            c.setPid(pid);
//
//            commentService.post(c);

//            if(toId != up.getId()) {
//                sendNotify(up.getId(), toId, pid);
//            }

            Comment com = new Comment();
            com.setPost_id((int)toId);
            com.setPid((int)pid);
            com.setContent(HtmlUtils.htmlEscape(text));
            com.setAuthor_id(u.getId());
            System.out.println(com);
            commentServiceImpl.insComment(com);
            data = Data.success("发表成功!");
        }


        return data;
    }
}
