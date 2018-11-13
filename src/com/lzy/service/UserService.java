package com.lzy.service;

import com.lzy.po.User;

public interface UserService {

    User checklogin(User u);
    boolean insUser(User u);
    void updDateLogin(User u);
    User selById(int id);

}
