package com.lzy.service.impl;

import com.lzy.mapper.CommentMapper;
import com.lzy.po.Comment;

import com.lzy.service.CommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class CommentServiceImpl implements CommentService{
    @Resource
    private CommentMapper commentMapper;

    @Override
    public void insComment(Comment comment) {
       int id = commentMapper.insComment(comment);
    }




    @Override
    public List<Comment> selByPostId(int id) {
        List<Comment> list = commentMapper.selByPostId(id);
        return list;

    }

    @Override
    public Comment selById(int id) {
       return  commentMapper.selByCommentId(id);
    }
}
