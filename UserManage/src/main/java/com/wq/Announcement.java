package com.wq;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="announcement") 
public class Announcement {
    
    private int id; 
    private String announcer;       
    private String text;  
    private Date createDate;
    
    public Announcement(){  	
    }

    @Id
    @Column(name="id",nullable=false,unique=true)
    @GeneratedValue(strategy = GenerationType.IDENTITY) //h  
    public Integer getId(){
    	return id;
    }  
    public void setId(Integer id){
    	this.id = id;
    }
    
    @Column(name="announcer")
    public String getAnnouncer() {
        return announcer;  
    }  
    public void setAnnouncer(String announcer){
    	this.announcer = announcer;
    }

    @Column(name="text")
    public String getText() {  
        return text;  
    }  
    public void setText(String text){
    	this.text = text;
    }
    
    @Column(name="createDate")
    public Date getCreateDate() {  
        return createDate;  
    }  
    public void setCreateDate(Date date){
    	this.createDate = date;
    }

}
