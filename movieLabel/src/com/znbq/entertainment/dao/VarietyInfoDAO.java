package com.znbq.entertainment.dao;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.type.StandardBasicTypes;
import org.junit.Test;
import org.springframework.stereotype.Repository;
import com.znbq.entertainment.entity.*;

@Repository
public class VarietyInfoDAO {
	
	@Resource
	private SessionFactory sessionFactory;
	
	private Session getSession(){
		System.out.println("getOK");
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<VarietyInfo> getVarieties(){
		return (List<VarietyInfo>)this.getSession().createCriteria(VarietyInfo.class).list();
	}
	
	@SuppressWarnings("unchecked")
	public VarietyInfo getVarietyByComment(int comment){		//根据评论数搜索数据库
		System.out.println("selectOK");
		List<VarietyInfo> list=this.getSession().createQuery("from VarietyInfo vi where vi.comment="+comment+"").list();
		if(list.isEmpty()) return null;
		else return list.get(0);
	}

}
