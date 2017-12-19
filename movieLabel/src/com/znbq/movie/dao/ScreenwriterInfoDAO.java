package com.znbq.movie.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


import com.znbq.movie.entity.ScreenwriterInfo;


/**
 * 用于标注数据访问组件，即DAO组件
 * spring会对这个注解进行自动扫描
 */
@Repository
public class ScreenwriterInfoDAO {
    
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@SuppressWarnings("unchecked")
	public ScreenwriterInfo getScreenwriterInfoById(String id) {
		//return (ScreenwriterInfo) this.getSession().createQuery("from ScreenwriterInfo where id=?").setParameter(0, id).uniqueResult();
		List<ScreenwriterInfo> list=this.getSession().createQuery("from ScreenwriterInfo screenwriterInfo where screenwriterInfo.id='"+id+"'").list();
		if(list.isEmpty())
			return null;
		else
			return list.get(0);
	}
	
	public void addScreenwriterInfo(ScreenwriterInfo screenwriter){
	    /**
	     * 上传数据及保存文件
	     */
		this.getSession().save(screenwriter);
	}
	
	public void updateScreenwriterInfo(ScreenwriterInfo screenwriter) {
		this.getSession().update(screenwriter);
	}
	/*
	public void deleteScreenwriterInfoById(String id) {
		this.getSession().createQuery("delete ScreenwriterInfo where id=?").setParameter(0, id).executeUpdate();
	}
	*/
	
	@SuppressWarnings("unchecked")
	public List<ScreenwriterInfo> getScreenwriters() {
		/**
		 * createCriteria为hibernate中的方法，创建一个List集合
		 * 存放ScreenwriterInfo实体类
		 */
		return (List<ScreenwriterInfo>)this.getSession().createCriteria(ScreenwriterInfo.class).list();
	}
}
