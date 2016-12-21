package com.guyu.ssm1.base.mapper;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface BaseMapper<T,ID extends Serializable> {
    public int insert(T t);
    
    public int insertBatch(List<T> t);
    
    public int deleteBatchById(List<ID> ids);
 
    public int deleteById(@Param("id") ID id);
 
    public int deleteById(@Param("id") String id);
 
    public int update(T t);
 
    public T find(Map<String, Object> parameter);
 
    public T findById(@Param("id") ID id);
 
    public T findById(@Param("id") String id);
 
    public List<T> findByName(@Param("name") String name);
 
    public List<T> queryListAll(Map<String, Object> parameter);
    
    public List<T> queryListByPage(Map<String, Object> parameter);
    
    int count(Map<String, Object> parameter);
	
}