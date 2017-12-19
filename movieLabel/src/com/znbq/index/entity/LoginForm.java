package com.znbq.index.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "userinfo")
public class LoginForm{

	private String id;
    private String username;
    private String password;
 
    @Id
    @Column(name="id",nullable=false,unique=true,length=32)
    @GenericGenerator(name="generator",strategy="uuid")
    @GeneratedValue(generator="generator")
    public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
    @Column(name = "password", nullable = false,length=20)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column(name = "username", nullable = false,length=20)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

	
}
