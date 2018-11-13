package com.lzy.mapper;

import com.lzy.po.Post;
import com.lzy.po.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface PostMapper {

    @Insert("insert into tb_post(id,user_id,channel_id,content,title) values(default,#{user_id},#{channel_id}" +
            ",#{content},#{title})")
    void insPost(Post post);


    @Select("select * from tb_post where user_id=#{id}")
    List<Post> findByUserId(User user);

    @Select("select * from tb_post where id=#{0}")
    Post selByID(int id);

}
