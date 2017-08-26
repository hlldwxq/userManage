package com.wq;

public class User {
	private String uname;     
    private String upassword;  
    private String gender;
    private long id;
    
    public User(){  	
    }
    public User(String uname,String upassword){
    	this.uname = uname;
    	this.upassword = upassword;
    }
    public User(String uname,String upassword,String gender){
    	this.uname = uname;
    	this.upassword = upassword;
    	this.gender = gender;
    }
    public User(long id,String uname,String upassword,String gender){
    	this.id = id;
    	this.uname = uname;
    	this.upassword = upassword;
    	this.gender = gender;
    }
    public long getId(){
    	return id;
    }
    
    public void setId(long id){
    	this.id = id;
    }
    
    public String getUname() {  
        return uname;  
    }  
  
    public void setUname(String uname) {  
        this.uname = uname;  
    }  
  
    public String getUpassword() {  
        return upassword;  
    }  
  
    public void setUpassword(String upassword) {  
        this.upassword = upassword;  
    }  
    
    public String getGender() {  
        return gender;  
    }  
  
    public void setGender(String gender) {  
        this.gender = gender;  
    }  
}
