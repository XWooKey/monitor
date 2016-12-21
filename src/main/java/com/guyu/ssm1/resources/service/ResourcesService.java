package com.guyu.ssm1.resources.service;

import java.util.List;

import com.guyu.ssm1.base.service.BaseService;
import com.guyu.ssm1.resources.model.ResourcesEntity;
import com.guyu.ssm1.user.model.UserEntity;


public interface ResourcesService extends BaseService<ResourcesEntity, Long>{
	public List<ResourcesEntity> findAllByUserId(UserEntity userEntity);
	
	
}
