package com.lzy.service.impl;

import com.lzy.mapper.AnimationMapper;
import com.lzy.po.Animation;
import com.lzy.service.AnimationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;



@Service
public class AnimationServiceImpl implements AnimationService {
    @Resource
    private AnimationMapper animationMapper;
    @Override
    public List<Animation> selAllAn() {
        return animationMapper.selAllAn();
    }

    @Override
    public Animation selById(int id) {
       return  animationMapper.selById(id);
    }

    @Override
    public void insAnimation(Animation animation) {
        animationMapper.insAnimation(animation);
    }
}
