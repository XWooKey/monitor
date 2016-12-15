package com.guyu.ssm1.service;

import com.guyu.ssm1.pojo.User;

import java.util.List;

/**
 * Created by GUYU on 2016/12/14.
 */
public interface UserService {
    public List<User> findAllUser();
}