package com.guyu.ssm1.user.service;

import com.guyu.ssm1.exception.ServiceException;
import com.guyu.ssm1.user.model.UserEntity;

import java.util.List;
import java.util.Map;

/**
 * Created by GUYU on 2016/12/18.
 */
public interface UserService {
    public List<UserEntity> queryListByPage(Map<String, Object> parameter);

    public UserEntity findByName(String accountName);

    public int insert(UserEntity userEntity);

    public UserEntity findById(Long id);

    public int update(UserEntity userEntity);

    public int updateOnly(UserEntity userEntity, String password) throws ServiceException;

    public int deleteBatchById(List<Long> userIds);
}
