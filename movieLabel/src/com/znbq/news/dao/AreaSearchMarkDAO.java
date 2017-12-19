/**
 * 
 */
package com.znbq.news.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.znbq.news.entity.AreaFeatures;
import com.znbq.news.entity.AreaSearchMark;

/**
 * @author luyufan
 *
 */
@Repository
public class AreaSearchMarkDAO {
	
	@Resource 
	private SessionFactory sessionFactory;
	
	/**
	 * get a session from context to request data
	 * @return Session
	 */
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	/**
	 * this function is used to get an object of AreaSearchMark by parameters with year,month and day,queries the database
	 * @param year
	 * @param month
	 * @param day
	 * @return AreaSearchMark
	 */
	@SuppressWarnings("unchecked")
	public AreaSearchMark getAreaSearchMark(String year,String month,String day)
	{
		List<AreaSearchMark> list=this.getSession().createQuery("from AreaSearchMark feature where feature.year='"+year+"'"+
		" and feature.month='"+month+"'"+" and feature.day='"+day+"'").list();
		if(list.isEmpty())return null;
		else return list.get(0);
	}
}
