package com.lzy.service;

import com.lzy.po.Comment;


import java.util.List;

public interface CommentService {

    List<Comment> selByPostId(int id);
    Comment selById(int id);
    void insComment(Comment comment);

}
