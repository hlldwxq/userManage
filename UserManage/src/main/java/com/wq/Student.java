package com.wq;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity  //h
@Table(name="student")  //h
public class Student {
    
    private String id; 
    private String studentname;       
    private String studentpassword;    
    private String gender;
    
    public Student(){  	
    }

    @Id
    @Column(name="id",nullable=false,unique=true)
    @GeneratedValue(strategy = GenerationType.IDENTITY) //h  
    public String getId(){
    	return id;
    }  
    public void setId(String id){
    	this.id = id;
    }
    
    @Column(name="studentname")
    public String getstudentname() {
        return studentname;  
    }  
    public void setstudentname(String studentname){
    	this.studentname = studentname;
    }

    @Column(name="studentpassword")
    public String getstudentpassword() {  
        return studentpassword;  
    }  
    public void setstudentpassword(String studentpassword){
    	this.studentpassword = studentpassword;
    }
    
    @Column(name="gender")
    public String getGender() {  
        return gender;  
    }  
    public void setGender(String gender){
    	this.gender = gender;
    }
    

}
