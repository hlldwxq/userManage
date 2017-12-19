package com.znbq.movie.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.znbq.movie.entity.MovieIp;


/**
 * 用于标注数据访问组件，即DAO组件
 * spring会对这个注解进行自动扫描
 */
@Repository
public class MovieIpDAO {
    
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@SuppressWarnings("unchecked")
	public MovieIp getMovieIpById(String id) {
		//return (MovieIp) this.getSession().createQuery("from MovieIp where id=?").setParameter(0, id).uniqueResult();
		List<MovieIp> list=this.getSession().createQuery("from MovieIp movieIp where movieIp.movieId='"+id+"'").list();
		if(list.isEmpty())
			return null;
		else
			return list.get(0);
	}
	
	public void addMovieIp(MovieIp movieIp){
	    /**
	     * 上传数据及保存文件
	     */
		this.getSession().save(movieIp);
	}
	
	public void updateMovieIp(MovieIp movieIp) {
		this.getSession().update(movieIp);
	}
	/*
	public void deleteMovieIpById(String id) {
		this.getSession().createQuery("delete MovieIp where id=?").setParameter(0, id).executeUpdate();
	}*/

	@SuppressWarnings("unchecked")
	public List<MovieIp> getMovieIp() {
		/**
		 * createCriteria为hibernate中的方法，创建一个List集合
		 * 存放MovieIp实体类
		 */
		return (List<MovieIp>)this.getSession().createCriteria(MovieIp.class).list();
	}
}
