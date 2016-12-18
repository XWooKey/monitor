package com.guyu.ssm1.role.model;

import com.guyu.ssm1.base.model.BaseEntity;
import com.guyu.ssm1.user.model.UserEntity;

import java.util.List;

/**
 * Created by GUYU on 2016/12/18.
 */
public class RoleEntity extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    private String name;
    private String description;
    private List<UserEntity> userList;

    public List<UserEntity> getUserList() {
        return userList;
    }

    public void setUserList(List<UserEntity> userList) {
        this.userList = userList;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
