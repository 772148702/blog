package com.lzy.service.impl;

import com.lzy.mapper.PostMapper;
import com.lzy.po.Post;
import com.lzy.po.User;
import com.lzy.service.PostService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class PostServiceImpl implements PostService {
 @Resource
 private PostMapper postMapper;

    @Override
    public void insPost(Post post) {
        postMapper.insPost(post);
    }

    @Override
    public List<Post> selByUserId(User user) {
       return postMapper.findByUserId(user);

    }

    @Override
    public Post selById(int id) {
        return postMapper.selByID(id);
    }
}
