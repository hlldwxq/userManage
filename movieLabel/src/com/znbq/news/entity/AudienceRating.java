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
@Table(name="news_audiencerating")
public class AudienceRating implements Serializable {
	
	private String year;
	private String month;
	private String day;
	private String TVname;//卫视名称
	private String Ratecity;//所处城市的收视率
	private double audienceRate;//收视率
	
	
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
	
	@Id
	@Column(name="tvname",nullable=false,length=30)
	@GeneratedValue(generator="generator")
	@GenericGenerator(name="generator",strategy="assigned")
	public String getTVname() {
		return TVname;
	}
	
	@Id
	@Column(name="city",nullable=false,length=6)
	@GeneratedValue(generator="generator")
	@GenericGenerator(name="generator",strategy="assigned")
	public String getRatecity() {
		return Ratecity;
	}
	@Column(name="audiencerate")
	public double getAudienceRate() {
		return audienceRate;
	}
	public void setTVname(String tVname) {
		TVname = tVname;
	}
	public void setRatecity(String ratecity) {
		Ratecity = ratecity;
	}
	public void setAudienceRate(double audienceRate) {
		this.audienceRate = audienceRate;
	}
}
