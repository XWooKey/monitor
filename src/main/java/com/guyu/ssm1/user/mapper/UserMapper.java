package com.guyu.ssm1.user.mapper;

import com.guyu.ssm1.base.mapper.BaseMapper;
import com.guyu.ssm1.user.model.UserEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by GUYU on 2016/12/18.
 */


public interface UserMapper extends BaseMapper<UserEntity,Long>{
    public int insertUserRole(UserEntity userEntity);

    public int updateUserRole(UserEntity userEntity);

    public int deleteBatchUserRole(List<Long> userIds);

}
