package com.wq;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="teacher")
public class Teacher {
	private String id;
	private String teacherName;     
    private String password;  
    private int power;
    private String college;
    public Teacher(){    	
    }
    public Teacher(String id,String teacherName){
    	this.id = id;
    	this.teacherName = teacherName;
    }
    @Id
    @Column(name="id",nullable=false,unique=true) 
    public String getId(){
    	return id;
    }  
    public void setId(String id){
    	this.id = id;
    }
    
    @Column(name="teacherName")
    public String getTeacherName() {
        return teacherName;  
    }  
    public void setTeacherName(String teacherName){
    	this.teacherName = teacherName;
    }
    
    @Column(name="password")
    public String getPassword() {
        return password;  
    }  
    public void setPassword(String password){
    	this.password = password;
    }
    
    @Column(name="power")
    public int getPower() {
        return power;  
    }  
    public void setPower(int power){
    	this.power = power;
    }
    
    @Column(name="colllege")
    public String getCollege() {
        return college;  
    }  
    public void setCollege(String college){
    	this.college = college;
    }
}