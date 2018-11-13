package com.lzy.service;

import com.lzy.po.Channel;
import com.lzy.po.Post;

import java.util.List;

public interface ChannelService {

    List<Post> selByChannelId(int id);
    List<Channel> selAllChannel();

}
