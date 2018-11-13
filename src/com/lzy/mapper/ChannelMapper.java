package com.lzy.mapper;

import com.lzy.po.Channel;
import com.lzy.po.Post;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ChannelMapper {

    @Select("select * from tb_post where channel_id=#{0}")
    List<Post> selById(int id);

    @Select("select * from tb_channel ")
    List<Channel> selAllChannel();
}
