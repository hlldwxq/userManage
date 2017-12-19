package com.znbq.index.dao;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.type.StandardBasicTypes;
import org.junit.Test;
import org.springframework.stereotype.Repository;

import com.znbq.index.entity.*;

@Repository
public class UserInfoDAO {
	
	@Resource 
	private SessionFactory sessionFactory;
	
	
	private Session getSession()
	{
		System.out.println("getOK");
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<UserInfo> getPersons()
	{
		
		return (List<UserInfo>)this.getSession().createCriteria(UserInfo.class).list();
	}
	
	
	
	@SuppressWarnings("unchecked")
	public LoginForm getPasswordByName(String username)
	{
		System.out.println("selectOK");
		//List list=this.getSession().createSQLQuery("select username from userinfo where password='0000'")
				//.addScalar("username", StandardBasicTypes.STRING).list();
		//System.out.println( (LoginForm) this.getSession().createQuery("from LoginForm login")); 
		
		List<LoginForm> list=this.getSession().createQuery("from LoginForm login where login.username='"+username+"'").list();
		if(list.isEmpty())
			return null;
		else 
			return list.get(0);
		//return (LoginForm) this.getSession().createQuery("from LoginForm login where login.username='abcd'").uniqueResult();
	}
}

