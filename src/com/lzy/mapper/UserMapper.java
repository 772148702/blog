package com.lzy.mapper;

import com.lzy.po.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface UserMapper {

    User selByNamePwd(User u);

    @Insert("insert into tb_user(id,uname,pwd,name,email,created,last_login,avatar) " +
            "values(default,#{uname},#{pwd},#{name},#{email},#{created},#{last_login},#{avatar})")
    int insUser(User user);

    @Select("select * from tb_user where uname=#{0}")
    User selByName(String uname);

    @Update("update tb_user set last_login=#{last_login} where id=#{id} ")
    void updLoginById(User user);

    @Select("select * from tb_user where id=#{0}")
    User selById(int id);

}
