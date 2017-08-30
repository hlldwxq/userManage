package com.wq;

public class User {
	private String username;     
    private String userpassword;  
    private String gender;
    private long id;
    
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
    public User(long id,String uname,String upassword,String gender){
    	this.id = id;
    	this.username = uname;
    	this.userpassword = upassword;
    	this.gender = gender;
    }
    public long getId(){
    	return id;
    }
    
    public void setId(long id){
    	this.id = id;
    }
    
    public String getUsername() {  
        return username;  
    }  
  
    public void setUsername(String uname) {  
        this.username = uname;  
    }  
  
    public String getUserpassword() {  
        return userpassword;  
    }  
  
    public void setUserpassword(String upassword) {  
        this.userpassword = upassword;  
    }  
    
    public String getGender() {  
        return gender;  
    }  
  
    public void setGender(String gender) {  
        this.gender = gender;  
    }  
}
