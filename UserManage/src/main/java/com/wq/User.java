package com.wq;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity  //h
@Table(name="user")  //h
public class User {
	
    
    private Integer id; 
    private String username;       
    private String userpassword;    
    private String gender;
    
    public User(){  	
    }

    @Id
    @Column(name="id",nullable=false,unique=true)
    @GeneratedValue(strategy = GenerationType.IDENTITY) //h  
    public Integer getId(){
    	return id;
    }  
    public void setId(Integer id){
    	System.out.println(id);
    	this.id = id;
    }
    
    @Column(name="username",nullable=false,length=20)
    public String getUsername() {
        return username;  
    }  
    public void setUsername(String username){
    	System.out.println(username);
    	this.username = username;
    }

    @Column(name="userpassword",nullable=false,length=50)
    public String getUserpassword() {  
        return userpassword;  
    }  
    public void setUserpassword(String userpassword){
    	System.out.println(userpassword);
    	this.userpassword = userpassword;
    }
    
    @Column(name="gender",nullable=false,length=225)
    public String getGender() {  
        return gender;  
    }  
    public void setGender(String gender){
    	System.out.println(gender);
    	this.gender = gender;
    }
    

}
