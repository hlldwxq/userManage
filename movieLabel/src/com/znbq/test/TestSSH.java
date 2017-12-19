package com.znbq.test;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.type.StandardBasicTypes;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSSH {

	/*@Test
	public void test() {
		System.out.println("不知道在干嘛哈哈");
		//fail("Not yet implemented");
	}*/
	
	private ApplicationContext ctx = null;
	
	//@Test
	public void tetsDataSource() throws SQLException{
		ctx = new ClassPathXmlApplicationContext("spring.xml");
		System.out.println("数据源:"+ctx);
		DataSource dataSource = ctx.getBean(DataSource.class);
		System.out.println("打开数据连接："+dataSource.getConnection().toString());
		SessionFactory sessionFactory = ctx.getBean(SessionFactory.class);
		System.out.println("sessionFactory:"+sessionFactory); 
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		tx.commit();
		//List list=session.createSQLQuery("select username from userinfo where password='0000'")
				//.addScalar("username", StandardBasicTypes.STRING).list();
		List list=session.createSQLQuery("SELECT * FROM `tv_play` WHERE `类型` LIKE '%剧情%'").list();
		System.out.println(list.get(0)); 
		session.close();
	}
	
	@Test
	public void stringTest()
	{
		String str="D:\\Program Files\\wamp\\tomcat\\webapps\\movieLabel\\";
		String[] st=str.split("\\\\");
		String cut = new String();
		for(int i=0;i<st.length-1;i++)
		{
			cut+=st[i]+"\\";
		}
		System.out.println(cut+"images");
		System.out.println(str.lastIndexOf("\\"));
		System.out.println(str.indexOf("\\"));
		//System.out.println(str.split("\\"));
		String fileName="asdfasefimg";
		System.out.println(fileName.split("\\.").length);
		System.out.println(fileName.split("\\.")[0]);
		String test="";
		System.out.println(test.isEmpty());
	}
}
