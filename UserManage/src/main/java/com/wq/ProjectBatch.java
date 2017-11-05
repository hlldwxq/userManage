package com.wq;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Column;

@Entity
@Table(name="batch")
public class ProjectBatch {
	
	public static final int WAIT_PASS = 1;
	public static final int PASS = 2;
	public static final int MID_TERM = 3;
	public static final int WAIT_KNOT = 4;
	public static final int KNOT = 5;
	
	public static final int COUNTRY = 0;
	public static final int BEIJING = 1;
	
	public static final String[] allLevel = {"国家级","北京市级"};
	public static final String[] allState= {"申请中 ","申请完成","中期","后期","已结束"};  
	
	private Integer id;
	private Integer year;
	private Integer level;
	private Integer state;
	
	public ProjectBatch(){}
	
	@Id
	@Column(name = "id",nullable=false,unique=true)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId(){
		return this.id;
	}
	public void setId(int id){
		this.id = id;
	}
	
	@Column(name = "year")
	public int getYear(){
		return this.year;
	}
	public void setYear(int year){
		this.year = year;
	}
	@Column(name = "level")
	public int getLevel(){
		return this.level;
	}
	public void setLevel(int level){
		this.level = level;
	}
	@Column(name="state")
	public int getState(){
		return this.state;
	}
	public void setState(int state){
		this.state = state;
	}
}
