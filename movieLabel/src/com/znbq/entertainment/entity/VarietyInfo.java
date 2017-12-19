package com.znbq.entertainment.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="variety_show")

public class VarietyInfo {
	private String name;
	private int comment;
	private String title;
	private String id;
	
	
	
	@Id
	@Column(name="序号",nullable=false,unique=true,length=32)
	@GenericGenerator(name="generator",strategy="uuid")
	@GeneratedValue(generator="generator")
	public String getId() {				//返回ID
		return id;
	}
	public void setId(String id) {		//设置ID
		this.id = id;
	}
	
	@Column(name="节目名称",nullable=false,unique=true,length=32)
	public String getName() {				//返回name
		return name;
	}
	public void setName(String name) {				//设置ID
		this.name = name;
	}
	
	@Column(name="用户评论数",nullable=false,length=10)
	public int getComment() {				//返回用户评论数
		return comment;
	}
	public void setComment(int comment) {				//设置用户评论数
		this.comment = comment;
	}
	
	@Column(name="节目标题",nullable=false,length=32)
	public String getTitle() {				//返回题目
		return title;
	}
	public void setTitle(String title) {				//设置题目
		this.title = title;
	}
	
	
	
}
