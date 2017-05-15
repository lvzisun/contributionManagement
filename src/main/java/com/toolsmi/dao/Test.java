package com.toolsmi.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

public class Test {

	
	public static void main(String[] args) {
		BasicDao basicDao=new BasicDaoImpl();
		Map<String, Object> params=new HashMap<String,Object>();
		String hql="select count(id) from User";
		params.put("id",new Integer(1));
		int count=basicDao.queryCount(hql, params);
		System.out.println(count);
	}
}
