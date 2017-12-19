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
import com.znbq.news.entity.NewsHotTopic;

/**
 * @author luyufan
 *
 */
@Repository
public class NewsHotTopicDAO {
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
	 * this function is used to get a list of instances between two dates,one is made of year1 and month1,the other is made of year2 and month2
	 * @param year1
	 * @param month1
	 * @param year2
	 * @param month2
	 * @return List<NewsHotTopic>
	 */
	@SuppressWarnings("unchecked")
	public List<NewsHotTopic> getNewsHotTopicAll(String year1,String month1,String year2,String month2){
		int before_year=new Integer(year1);
		int next_year=new Integer(year2);
		int before_month=new Integer(month1);
		int next_month=new Integer(month2);
		if(before_year==next_year){
			List<NewsHotTopic> list=this.getSession().createQuery("from NewsHotTopic feature where feature.year='"+before_year+"' and feature.month>='"+before_month+"'"+
					" and feature.month<='"+next_month+"'").list();
				if(list.isEmpty())return null;
				else return list;
		}
		else{
			List<NewsHotTopic> list=this.getSession().createQuery("from NewsHotTopic feature where (feature.year>"+before_year+"" 
					+ " and feature.year <"+next_year+") or ( feature.year="+before_year+" and feature.month >="+before_month+
					" ) or ( feature.year="+next_year+" and feature.month<= "+next_month+" ) ").list();
				if(list.isEmpty())return null;
				else return list;
		}
	}
}
