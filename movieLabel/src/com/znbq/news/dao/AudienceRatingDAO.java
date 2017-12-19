/**
 * 
 */
package com.znbq.news.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.znbq.news.entity.AudienceRating;

/**
 * @author luyufan
 *
 */
@Repository
public class AudienceRatingDAO {
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
	 * this function is used to get a list of AudienceRating by parameters with year,month and day,queries the database
	 * @param year
	 * @param month
	 * @param day
	 * @return List<AudienceRating>
	 */
	@SuppressWarnings("unchecked")
	public List<AudienceRating> getAudienceRatingAll(String year,String month,String day){
		List<AudienceRating> list=this.getSession().createQuery("from AudienceRating feature where feature.year='"+year+"'"+
				" and feature.month='"+month+"'"+" and feature.day='"+day+"'").list();
				if(list.isEmpty())return null;
				else return list;
	}
}
