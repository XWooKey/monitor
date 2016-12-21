package com.guyu.ssm1.resources.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.guyu.ssm1.base.service.impl.AbstractService;
import com.guyu.ssm1.resources.mapper.ResourcesMapper;
import com.guyu.ssm1.resources.model.ResourcesEntity;
import com.guyu.ssm1.resources.service.ResourcesService;
import com.guyu.ssm1.user.model.UserEntity;


@Service("resourcesService")
public class ResourcesServiceImpl extends
		AbstractService<ResourcesEntity, Long> implements ResourcesService {

	@Autowired
	private ResourcesMapper resourcesMapper;

	// 这句必须要加上。不然会报空指针异常，因为在实际调用的时候不是BaseMapper调用，而是具体的mapper，这里为userMapper
	@Autowired
	public void setBaseMapper() {
		super.setBaseMapper(resourcesMapper);
	}

	@Override
	public int insert(ResourcesEntity t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertBatch(List<ResourcesEntity> t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBatchById(List<Long> ids) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteById(Long id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteById(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ResourcesEntity t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ResourcesEntity find(Map<String, Object> parameter) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResourcesEntity findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResourcesEntity findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ResourcesEntity> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ResourcesEntity> queryListAll(Map<String, Object> parameter) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ResourcesEntity> queryListByPage(Map<String, Object> parameter) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int count(Map<String, Object> parameter) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ResourcesEntity> findAllByUserId(UserEntity userEntity) {
		return resourcesMapper.findByUserId(userEntity);
	}

}
