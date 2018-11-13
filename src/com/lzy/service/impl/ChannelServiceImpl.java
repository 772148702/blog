package com.lzy.service.impl;

import com.lzy.mapper.ChannelMapper;
import com.lzy.po.Channel;
import com.lzy.po.Post;
import com.lzy.service.ChannelService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class ChannelServiceImpl implements ChannelService {
    @Resource
    private ChannelMapper channelMapper;
    @Override
    public List<Post> selByChannelId(int id) {
        return channelMapper.selById(id);
    }

    @Override
    public List<Channel> selAllChannel() {
        return channelMapper.selAllChannel();
    }
}
