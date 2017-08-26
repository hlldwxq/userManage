package com.wq.data;
import com.opensymphony.xwork2.inject.Inject;
import com.wq.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

public class jdbcUserRepository  implements UserRepository{

	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return this.jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public void save(User u) {
		
	}

	public List<User> findAll() {
		List<User> uL = new ArrayList<User>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try(Connection c = DriverManager.getConnection("jdbc:mysql://localhost:2808/usermanage?characterEncoding=UTF-8","root","root");
			Statement s = c.createStatement();)
		{
			String sql = "select * from User";
			
			ResultSet rs = s.executeQuery(sql);
			while(rs.next()){
				long id = rs.getLong("id");
				String username = rs.getString("username");
				String userpassword = rs.getString("userpassword");
				String gender = rs.getString("gender");
				uL.add(new User(id,username,userpassword,gender));
			}
			s.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uL;
	}

	public User findByName(String name) {
		User u = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try(Connection c = DriverManager.getConnection("jdbc:mysql://localhost:2808/usermanage?characterEncoding=UTF-8","root","root");
			Statement s = c.createStatement();)
		{
			String sql = "select * from User where username = '" + name +" '";
			
			ResultSet rs = s.executeQuery(sql);
			if(rs.next()){
				long id = rs.getLong("id");
				String username = rs.getString("username");
				String userpassword = rs.getString("userpassword");
				String gender = rs.getString("gender");
				u = new User(id,username,userpassword,gender);
			}
			s.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}

	public boolean LoginRight(User u) {
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try(Connection c = DriverManager.getConnection("jdbc:mysql://localhost:2808/usermanage?characterEncoding=UTF-8","root","root");
			Statement s = c.createStatement();)
		{
			String sql = "select * from User where username='"+u.getUname()+"' and userpassword='"+u.getUpassword()+"'";
			ResultSet rs = s.executeQuery(sql);
			if(rs.next()){
				b = true; 
			}
			s.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return b;
	}

	public boolean Registed(String name) {
		boolean b = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try(Connection c = DriverManager.getConnection("jdbc:mysql://localhost:2808/usermanage?characterEncoding=UTF-8","root","root");
			Statement s = c.createStatement();)
		{
			String sql = "select * from User where username='"+name+"'";
			ResultSet rs = s.executeQuery(sql);
			if(rs.next()){
				b = true; 
			}
			s.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return b;
	
	}

	public void Delete(long id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try(Connection c = DriverManager.getConnection("jdbc:mysql://localhost:2808/usermanage?characterEncoding=UTF-8","root","root");
			Statement s = c.createStatement();)
		{
			String sql = "delete from User where id="+id;
			s.execute(sql);
			s.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
