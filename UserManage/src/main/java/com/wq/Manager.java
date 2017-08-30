package com.wq;

public class Manager {
	private String mname = "admin";     
    private String mpassword ="123";  
    
    public Manager(){    	
    }
    public Manager(String n,String p){
    	mname = n;
    	mpassword = p;
    }
    public String getMname() {  
        return mname;  
    }  
  
    public void setMname(String mname) {  
        this.mname = mname;  
    }  
  
    public String getMpassword() {  
        return mpassword;  
    }  
  
    public void setMpassword(String mpassword) {  
        this.mpassword = mpassword;  
    }  
}