package com.znbq.test;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.stereotype.Repository;



@Repository
public class testDao {
	
	@Resource 
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unused")
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	@Test
	public testEntity getPasswordByName(String username)
	{
		System.out.println("ok");
		return (testEntity)this.getSession().createQuery("select testEntity where username = ?")
		.setParameter(0, "znbq").uniqueResult();
		
	}
}
