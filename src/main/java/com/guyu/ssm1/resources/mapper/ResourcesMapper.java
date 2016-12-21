package com.guyu.ssm1.resources.mapper;

import java.util.List;

import com.guyu.ssm1.base.mapper.BaseMapper;
import com.guyu.ssm1.resources.model.ResourcesEntity;
import com.guyu.ssm1.user.model.UserEntity;

public interface ResourcesMapper extends BaseMapper<ResourcesEntity, Long> 
{
	public List<ResourcesEntity> findByUserId(UserEntity userEntity);
}
