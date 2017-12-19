/**
 * 
 */
package com.znbq.news.entity;

import java.io.Serializable;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

/**
 * @author luyufan
 *
 */
@Entity
@Table(name="news_labelcollection")
public class NewsLabelCollection implements Serializable {
	private String year;
	private String month;
	private String day;
	private String ceremonyAction;
	private String economicConstruction;
	private String entironment;
	private String health;
	private String successfulModel;
	
	@Id
	@Column(name="year",nullable=false,length=4)
	@GeneratedValue(generator="generator")
	@GenericGenerator(name="generator",strategy="assigned")
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	@Id
	@Column(name="month",nullable=false,length=2)
	@GeneratedValue(generator="generator")
	@GenericGenerator(name="generator",strategy="assigned")
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	
	@Id
	@Column(name="day",nullable=false,length=4)
	@GeneratedValue(generator="generator")
	@GenericGenerator(name="generator",strategy="assigned")
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	@Column(name="纪念活动")
	public String getCeremonyAction() {
		return ceremonyAction;
	}
	@Column(name="经济建设")
	public String getEconomicConstruction() {
		return economicConstruction;
	}
	@Column(name="生态环境")
	public String getEntironment() {
		return entironment;
	}
	@Column(name="健康")
	public String getHealth() {
		return health;
	}
	@Column(name="成功典范")
	public String getSuccessfulModel() {
		return successfulModel;
	}
	public void setCeremonyAction(String ceremonyAction) {
		this.ceremonyAction = ceremonyAction;
	}
	public void setEconomicConstruction(String economicConstruction) {
		this.economicConstruction = economicConstruction;
	}
	public void setEntironment(String entironment) {
		this.entironment = entironment;
	}
	public void setHealth(String health) {
		this.health = health;
	}
	public void setSuccessfulModel(String successfulModel) {
		this.successfulModel = successfulModel;
	}
}
