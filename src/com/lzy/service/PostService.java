package com.lzy.service;

import com.lzy.po.Post;
import com.lzy.po.User;

import java.util.List;

public interface PostService {


    void insPost(Post post);

    List<Post> selByUserId(User user);

    Post selById(int id);
}
