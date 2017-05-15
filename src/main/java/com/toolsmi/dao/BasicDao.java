package com.toolsmi.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;

public interface BasicDao {

	Session getSession();
	
	Integer queryCount(String hql,Map<String,Object> params);
	
	<T>T queryEntity(String hql,Map<String,Object> params,Map<String, Object> order);
	
	<T> List<T> queryEntities(String hql,Map<String,Object> params,Map<String, Object> order);
	
}
