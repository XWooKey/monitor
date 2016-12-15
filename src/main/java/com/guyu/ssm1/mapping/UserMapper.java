package com.guyu.ssm1.mapping;


import com.guyu.ssm1.pojo.User;

import java.util.List;

public interface UserMapper {
    List<User> findAllUser();
}