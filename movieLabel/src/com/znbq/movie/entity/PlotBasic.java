package com.znbq.movie.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 电影桥段
 * @author as
 *
 */
@Entity
@Table(name = "bridge_plot")
public class PlotBasic {

	private int id;
	private String type;
	private String secondtype;
	private String name;
	private String brief;
	private String author;
	private String sourcename;
	private String sourceintroduction;
	private String allowedit;
	private String picurl;
	
	@Id
    @Column(name="id",nullable=false,unique=true,length=11)
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "type", nullable = false)
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Column(name = "secondtype")
	public String getSecondtype() {
		return secondtype;
	}
	public void setSecondtype(String secondtype) {
		this.secondtype = secondtype;
	}
	@Column(name = "name", nullable = false)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name = "brief", nullable = false)
	public String getBrief() {
		return brief;
	}
	public void setBrief(String brief) {
		this.brief = brief;
	}
	
	@Column(name = "author", nullable = false)
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	@Column(name = "sourcename", nullable = false)
	public String getSourcename() {
		return sourcename;
	}
	public void setSourcename(String sourcename) {
		this.sourcename = sourcename;
	}
	
	@Column(name = "sourceintroduction", nullable = false)
	public String getSourceintroduction() {
		return sourceintroduction;
	}
	public void setSourceintroduction(String sourceintroduction) {
		this.sourceintroduction = sourceintroduction;
	}
	
	@Column(name = "allowedit", nullable = false)
	public String getAllowedit() {
		return allowedit;
	}
	public void setAllowedit(String allowedit) {
		this.allowedit = allowedit;
	}
	
	@Column(name = "picurl")
	public String getPicurl() {
		return picurl;
	}
	public void setPicurl(String picurl) {
		this.picurl = picurl;
	}
	
	public boolean checkEmpty() {
		// TODO Auto-generated method stub
		System.out.println(name);
		if(this.name.isEmpty()||this.type.isEmpty()||this.secondtype.isEmpty()||this.sourcename.isEmpty()||this.sourceintroduction.isEmpty()||this.brief.isEmpty())
		{
			return true;
		}
		return false;
	}
	
	
}
