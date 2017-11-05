package com.wq;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="file")
public class ProjectFile {
	private Integer id;
	private String file;
	private Integer projectId;
	private String type;
	
	public ProjectFile(){}
	public ProjectFile(String file,int projectId,String type){
		this.file = file;
		this.projectId = projectId;
		this.type = type;
	}
	
	@Id
	@Column(name = "id",nullable=false,unique=true)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId(){
		return this.id;
	}
	public void setId(int id){
		this.id = id;
	}
	
	@Column(name = "file")
	public String getFile(){
		return this.file;
	}
	public void setFile(String file){
		this.file = file;
	}
	
	@Column(name = "projectId")
	public int getProjectId(){
		return this.projectId;
	}
	public void setProjectId(int projectId){
		this.projectId = projectId;
	}
	
	@Column(name = "type")
	public String getType(){
		return this.type;
	}
	public void setType(String type){
		this.type = type;
	}
}
