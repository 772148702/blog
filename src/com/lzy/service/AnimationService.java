package com.lzy.service;

import com.lzy.po.Animation;

import java.util.List;

public interface AnimationService {

    List<Animation>  selAllAn();
    Animation selById(int id);
    void insAnimation(Animation animation);
}
