package com.guyu.ssm1.service.impl;

import com.guyu.ssm1.mapping.UserMapper;
import com.guyu.ssm1.pojo.User;
import com.guyu.ssm1.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by GUYU on 2016/12/14.
 */
@Service
@Transactional
public class UserServiceImpl implements UserService{
    @Resource
    private UserMapper userMapper;


    @Override
    public List<User> findAllUser() {
        List<User> findAllUser = userMapper.findAllUser();
        return findAllUser;
    }
}
