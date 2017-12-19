package com.znbq.movie.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.znbq.movie.entity.StarringInfo;


/**
 * 用于标注数据访问组件，即DAO组件
 * spring会对这个注解进行自动扫描
 */
@Repository
public class StarringInfoDAO {
    
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@SuppressWarnings("unchecked")
	public StarringInfo getStarringInfoById(String id) {
		//return (StarringInfo) this.getSession().createQuery("from StarringInfo where id=?").setParameter(0, id).uniqueResult();
		List<StarringInfo> list=this.getSession().createQuery("from StarringInfo starringInfo where starringInfo.movieId='"+id+"'").list();
		if(list.isEmpty())
			return null;
		else
			return list.get(0);
	}
	
	public void addStarringInfo(StarringInfo starring){
	    /**
	     * 上传数据及保存文件
	     */
		this.getSession().save(starring);
	}
	
	public void updateStarringInfo(StarringInfo starring) {
		this.getSession().update(starring);
	}
	/*
	public void deleteStarringInfoById(String id) {
		this.getSession().createQuery("delete StarringInfo where id=?").setParameter(0, id).executeUpdate();
	}
	*/
	
	@SuppressWarnings("unchecked")
	public List<StarringInfo> getStarrings() {
		/**
		 * createCriteria为hibernate中的方法，创建一个List集合
		 * 存放StarringInfo实体类
		 */
		return (List<StarringInfo>)this.getSession().createCriteria(StarringInfo.class).list();
	}
}
