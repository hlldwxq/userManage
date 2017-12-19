package com.znbq.movie.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.znbq.movie.entity.MovieBasic;


/**
 * 用于标注数据访问组件，即DAO组件
 * spring会对这个注解进行自动扫描
 */
@Repository
public class MovieBasicDAO {
    
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public MovieBasic getMovieBasicById(String id) {
		//return (MovieBasic) this.getSession().createQuery("from MovieBasic where id=?").setParameter(0, id).uniqueResult();
		List<MovieBasic> list=this.getSession().createQuery("from MovieBasic movieBasic where movieBasic.id='"+id+"'").list();
		if(list.isEmpty())
			return null;
		else
			return list.get(0);
	}
	
	public void addMovieBasic(MovieBasic movieBasic){
	    /**
	     * 上传数据及保存文件
	     */
		this.getSession().save(movieBasic);
	}
	
	public void updateMovieBasic(MovieBasic movieBasic) {
		this.getSession().update(movieBasic);
	}
	/*public void deleteMovieBasicById(String id) {
		this.getSession().createQuery("delete MovieBasic where id=?").setParameter(0, id).executeUpdate();
	}*/

	@SuppressWarnings("unchecked")
	public List<MovieBasic> getMovieBasic() {
		/**
		 * createCriteria为hibernate中的方法，创建一个List集合
		 * 存放MovieBasic实体类
		 */
		return (List<MovieBasic>)this.getSession().createCriteria(MovieBasic.class).list();
	}
}
