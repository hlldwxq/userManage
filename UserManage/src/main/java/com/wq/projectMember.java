package com.wq;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="projectmember")
public class projectMember {
	private int projectId;
	private String projectMemberId;
	private int id;
	public projectMember(){
		
	}
	public projectMember(int projectId,String memberId){
		this.projectId = projectId;
		this.projectMemberId = memberId;
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
    
	@Column(name="projectId")
	public int getProjectId(){
		return this.projectId;
	}
	public void setProjectId(int projectId){
		this.projectId = projectId;
	}
	@Column(name="projectMemberId")
	public String getProjectMemberId(){
		return this.projectMemberId;
	}
	public void setProjectMemberId(String projectMemberId){
		this.projectMemberId = projectMemberId;
	}
}
