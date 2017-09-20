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
	
    
    private int id; 
    private String username;       
    private String userpassword;    
    private String gender;
    
    public User(){  	
    }
    
    public User(String uname,String upassword){
    	this.username = uname;
    	this.userpassword = upassword;
    }
    
    public User(String uname,String upassword,String gender){
    	this.username = uname;
    	this.userpassword = upassword;
    	this.gender = gender;
    }
    
    public User(int id,String uname,String upassword,String gender){
    	this.id = id;
    	this.username = uname;
    	this.userpassword = upassword;
    	this.gender = gender;
    }
    
    @Id
    @Column(name="id",nullable=false,unique=true)
    @GenericGenerator(name = "generator",strategy="uuid.hex") //h 
    @GeneratedValue(generator="generator") //h  
    public long getId(){
    	return id;
    }  
    public void setId(int id){
    	this.id = id;
    }
    
    @Column(name="username",nullable=false,length=20)
    public String getUsername() {  
        return username;  
    }  
    public void setUsername(String username){
    	this.username = username;
    }

    @Column(name="userpassword",nullable=false,length=50)
    public String getUserpassword() {  
        return userpassword;  
    }  
    public void setUserpassword(String userpassword){
    	this.userpassword = userpassword;
    }
    
    @Column(name="gender",nullable=false,length=225)
    public String getGender() {  
        return gender;  
    }  
    public void setGender(String gender){
    	this.gender = gender;
    }
    

}
