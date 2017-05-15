package com.toolsmi.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.engine.transaction.spi.TransactionFactory;
import org.hibernate.engine.transaction.spi.TransactionImplementor;
import org.hibernate.service.jdbc.connections.spi.ConnectionProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.toolsmi.util.Format;
@Repository("basicDao")
public class BasicDaoImpl implements BasicDao {
	private SessionFactory sessionFactory;
	
	private ConnectionProvider cp;
	private TransactionFactory<TransactionImplementor> tf;

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Integer queryCount(String hql, Map<String, Object> params) {
		hql=praseParams(hql, params);
		return getUniqueResult(hql);
	}
	
	/**
	 * 获取唯一结果的
	 * @param hql 查询语句
	 * @return
	 */
	private <T> T getUniqueResult(String hql){
		Session session=getSession();
		Query query=session.createQuery(hql);
		query.setMaxResults(1);
		return (T) query.uniqueResult();
	}
	
	/**
	 * 进一步解析hql语句，拼接条件部分
	 * @param hql	传入的hql查询语句
	 * @param params	要满足的条件已键值对的形式，拼接到hql语句中where key=value;
	 * @return	返回一个带有查询条件的hql语句
	 */
	private String praseParams(String hql,Map<String,Object> params){
		StringBuffer sb=new StringBuffer(hql);
		sb=sb.append(" where and ");
		if(params!=null && params.size()>0){
			for(String key:params.keySet()){
				if(!Format.isEmpty(params.get(key))){
					if(key.contains("id")){
						Integer value=(Integer) params.get(key);
						sb.append(key+"="+value+" and ");
					}else{
						String value=(String) params.get(key);
						sb.append(key+"like"+value+" and ");
					}
				}
			}
		}
		sb.append("1=1");
		return sb.toString();
	}

	
	private String praseOrder(String hql,Map<String, String> order){
		StringBuffer sb=new StringBuffer(hql);
		if(order!=null && order.size()>0){
			for(String key:order.keySet()){
				sb.append(" order by "+key+" "+order.get(key));
			}
		}
		return sb.toString();
	}
	@Override
	public <T> T queryEntity(String hql, Map<String, Object> params,
			Map<String, Object> order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> List<T> queryEntities(String hql, Map<String, Object> params,
			Map<String, Object> order) {
		// TODO Auto-generated method stub
		return null;
	}

}
