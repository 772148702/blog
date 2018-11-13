package com.lzy.service.impl;

import com.lzy.mapper.UserMapper;
import com.lzy.po.User;
import com.lzy.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("test")
public class UserServiceImpl implements UserService {
    @Resource
    public UserMapper userMapper;
    @Override
    public User checklogin(User u) {
       return  userMapper.selByNamePwd(u);
    }

    @Override
    public boolean insUser(User u) {
        boolean flag = false;
        User user = userMapper.selByName(u.getUname());
        if(user!=null) {
            return false;
        }
        userMapper.insUser(u);
        return true;
    }

    @Override
    public void updDateLogin(User u) {
        userMapper.updLoginById(u);
    }

    @Override
    public User selById(int id) {
       return userMapper.selById(id);
    }
}
