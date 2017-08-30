package com.wq.data;

import com.wq.User;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class jdbcUserRepository  implements UserRepository{

	private static final String INSERT_USER = "insert into user(username,userpassword,gender) values(?,?,?)"; 
	private static final String DELETE_USER = "delete from user where id = ?";
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return this.jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public void save(User u) {
		jdbcTemplate.update(INSERT_USER,u.getUsername(),u.getUserpassword(),u.getGender());
	}

	public List<User> findAll() {
		String sql = "select * from User";
		RowMapper<User> rowMapper = new BeanPropertyRowMapper<>(User.class);
		List<User> allUser = jdbcTemplate.query(sql, rowMapper);
		return allUser;
	}

	//@SuppressWarnings("unchecked")
	public User findByName(String name) {

		String sql = "select * from User where username = ?";
		System.out.println("hhh");
		User user = (User)jdbcTemplate.queryForObject(sql,new Object[] {name},new RowMapper(){  
	            @Override  
	            public Object mapRow(ResultSet rs,int rowNum)throws SQLException {  
	                User user  = new User();  
	                user.setId(rs.getLong("id"));  
	                user.setUsername(rs.getString("username"));  
	                user.setUserpassword(rs.getString("userpassword"));
	                user.setGender(rs.getString("gender"));
	                return user;  
	            }}  
            );
		
		System.out.println(user.getUsername());
		return user;
		
	}

	public boolean LoginRight(User u) {
		String sql = "select * from User where username = ? and userpassword = ?";
		User user = (User)jdbcTemplate.queryForObject(sql,new Object[] {u.getUsername(),u.getUserpassword()},new RowMapper(){  
            @Override  
            public Object mapRow(ResultSet rs,int rowNum)throws SQLException {  
                User u  = new User();  
                u.setId(rs.getLong("id"));  
                u.setUsername(rs.getString("username"));  
                u.setUserpassword(rs.getString("userpassword"));
                u.setGender(rs.getString("gender"));
                return u;  
            }}  );
		return !(user==null);
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
		jdbcTemplate.update(DELETE_USER, id);	
	}

}
