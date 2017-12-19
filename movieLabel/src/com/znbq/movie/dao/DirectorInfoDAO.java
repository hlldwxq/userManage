package com.znbq.movie.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.znbq.movie.entity.DirectorInfo;



/**
 * 用于标注数据访问组件，即DAO组件
 * spring会对这个注解进行自动扫描
 */
@Repository
public class DirectorInfoDAO {
    
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@SuppressWarnings("unchecked")
	public DirectorInfo getDirectorInfoById(String id) {
		//return (DirectorInfo) this.getSession().createQuery("from DirectorInfo where id=?").setParameter(0, id).uniqueResult();
		List<DirectorInfo> list=this.getSession().createQuery("from DirectorInfo director where director.id='"+id+"'").list();
		if(list.isEmpty())
			return null;
		else
			return list.get(0);
	}
	
	public void addDirectorInfo(DirectorInfo director){
	    /**
	     * 上传数据及保存文件
	     */
		this.getSession().save(director);
	}
	
	public void updateDirectorInfo(DirectorInfo director) {
		this.getSession().update(director);
	}
	/*
	public void deleteDirectorInfoById(String id) {
		this.getSession().createQuery("delete DirectorInfo where id=?").setParameter(0, id).executeUpdate();
	}*/

	@SuppressWarnings("unchecked")
	public List<DirectorInfo> getDirectors() {
		/**
		 * createCriteria为hibernate中的方法，创建一个List集合
		 * 存放DirectorInfo实体类
		 */
		return (List<DirectorInfo>)this.getSession().createCriteria(DirectorInfo.class).list();
	}
}
