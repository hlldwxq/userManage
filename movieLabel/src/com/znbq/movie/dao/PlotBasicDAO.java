package com.znbq.movie.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.znbq.movie.entity.PlotBasic;


@Repository
public class PlotBasicDAO {
    
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	
	@SuppressWarnings("unchecked")
	public PlotBasic getPlotById(String id) {
		List<PlotBasic> list=this.getSession().createQuery("from PlotBasic plot where plot.id='"+id+"'").list();
		if(list.isEmpty())
			return null;
		else
			return list.get(0);
	}
	
	public void addPlot(PlotBasic plot){
	    /**
	     * 上传数据及保存文件
	     */
		this.getSession().save(plot);
	}
	
	public void updatePlot(PlotBasic plot) {
		this.getSession().update(plot);
	}
	/*
	public void deleteMovieIpById(String id) {
		this.getSession().createQuery("delete MovieIp where id=?").setParameter(0, id).executeUpdate();
	}*/

	//数量少先写成获取全部
	@SuppressWarnings("unchecked")
	public List<PlotBasic> getAllPlot() {
		/**
		 * createCriteria为hibernate中的方法，创建一个List集合
		 * 存放MovieIp实体类
		 */
		
		return (List<PlotBasic>)this.getSession().createCriteria(PlotBasic.class).list();
	}
	
	//获取表中页面
	@SuppressWarnings("unchecked")
	public List<PlotBasic> getPlotByPage(int page,int pageSize)
	{
		//Query query = session.createQuery(hql);
		//query.setFirstResult(pageroffset);
		//query.setMaxResults(e);
		Criteria q=this.getSession().createCriteria(PlotBasic.class);
		q.setFirstResult(page*pageSize);
		q.setMaxResults(pageSize);
		return (List<PlotBasic>)q.list();
		
	}
	
	@SuppressWarnings("unchecked")
	public List<PlotBasic> getPlotByKey(String key)
	{
		Query q=this.getSession().createQuery("from PlotBasic plot where plot.id='"+key+"'");
		q.setMaxResults(30);
		List<PlotBasic> list=q.list();
		if(list.isEmpty())
			return null;
		else
			return list;
	}

}
