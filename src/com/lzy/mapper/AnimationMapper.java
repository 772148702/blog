package com.lzy.mapper;

import com.lzy.po.Animation;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AnimationMapper {
    @Select("select * from tb_animation")
    List<Animation> selAllAn();


    @Select("select * from tb_animation where id=#{id}")
    Animation selById(int id);

    @Insert("insert into tb_animation(id,name,image_id,description)  values(default,#{name},#{image_id},#{description})")
    void insAnimation(Animation animation);
}
