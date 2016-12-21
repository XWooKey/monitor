package com.guyu.ssm1.user.service.impl;

import com.guyu.ssm1.base.service.impl.AbstractService;
import com.guyu.ssm1.exception.ServiceException;
import com.guyu.ssm1.user.mapper.UserMapper;
import com.guyu.ssm1.user.model.UserEntity;
import com.guyu.ssm1.user.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import java.util.List;


/**
 * Created by GUYU on 2016/12/18.
 */
@Service("userService")
public class UserSerivceImpl extends AbstractService<UserEntity,Long> implements UserService{

    @Resource
    private UserMapper userMapper;

    
	@Autowired
	public void setBaseMapper() {
		super.setBaseMapper(userMapper);
	}
    
    
    /**
     * 
     * 重写用户插入，逻辑：
     * 1、插入用户
     * 2、插入用户和角色的对应关系
     */
    @Override
    public int insert(UserEntity userEntity) {
        try
        {
            if(userMapper.insert(userEntity) == 1)
            {
                if(userMapper.insertUserRole(userEntity) == 1)
                {
                   return 1;
                }else
                {
                    throw new ServiceException("更新用户: "+userEntity.getId()+" 的权限信息失败");
                }
            }else
            {
                throw new ServiceException("新增用户: "+userEntity.getId()+" 失败");
            }
        }catch(Exception e)
        {
            throw new ServiceException(e);
        }
    }
    /**
     * 重写用户更新逻辑：
     * 1、更新用户
     * 2、更新用户和角色的对应关系
     * 3、更新用户个人资料信息
     */
    public int update(UserEntity userEntity){
        try
        {
            if(userMapper.update(userEntity) == 1)
            {
                return userMapper.updateUserRole(userEntity);
            }else
            {
                return 0;
            }
        }catch(Exception e)
        {
            throw new ServiceException(e);
        }
    }


    /**
     * 重写用户删除逻辑：
     * 1、删除用户和角色的对应关系
     * 2、删除用户
     */
    public int deleteBatchById(List<Long> userIds){
        try
        {
            int result = userMapper.deleteBatchUserRole(userIds);
            if(result == userIds.size())
            {
                return userMapper.deleteBatchById(userIds);
            }else
            {
                return 0;
            }
        }catch(Exception e)
        {
            throw new ServiceException(e);
        }
    }

    @Override
    public int updateOnly(UserEntity userEntity, String password) throws ServiceException{
        try
        {
            int cnt = userMapper.update(userEntity);
            //发送邮件
           // emailUtil.send126Mail(userEntity.getAccountName(), "系统密码重置", "您好，您的密码已重置，新密码是:" + password);
            return cnt;
        }catch(Exception e)
        {
            throw new ServiceException(e);
        }
    }
}
