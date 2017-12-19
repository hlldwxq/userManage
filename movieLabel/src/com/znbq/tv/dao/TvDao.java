package com.znbq.tv.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.znbq.tv.entity.*;

@Repository
public class TvDao {

	
	@Resource 
	private SessionFactory sessionFactory;
	
	
	private Session getSession()
	{
		System.out.println("getOK");
		return sessionFactory.getCurrentSession();
	}
	
	
	@SuppressWarnings("unchecked")
	public List<TvPlayBrief> getTvPlayBriefByType(String tvType)
	{
		List<TvPlayBrief> list=this.getSession().createQuery("from TvPlayBrief brief where brief.type LIKE '%"+tvType+"%'").list();
		if(list.isEmpty())return null;
		//System.out.println(query.);
		else return list;
		
	}
	
	@SuppressWarnings("unchecked")
	public TvPlayStatistic getTvPlayStatisticByName(String name)
	{
		List<TvPlayStatistic> list=this.getSession().createQuery("from TvPlayStatistic statistic where statistic.name = '"+name+"'").list();
		if(list.isEmpty())
			return null;
		else return list.get(0);
		
	}
	
	@SuppressWarnings("unchecked")
	public TvPlayBasic getTvPlayBasicByName(String name)
	{
		List<TvPlayBasic> list=this.getSession().createQuery("from TvPlayBasic basic where basic.tvName = '"+name+"'").list();
		if(list.isEmpty())
			return null;
		else return list.get(0);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<TvPlayBasic> getTvPlayBasicSortByRate()
	{
		Query query=this.getSession().createQuery("from TvPlayBasic");
		query.setMaxResults(6);
		List<TvPlayBasic> list=query.list();
		return list;
		
	}
}
