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
@Table(name="news_sentiment")
public class AudienceSentiment implements Serializable {
	private String year;
	private String month;
	private String day;
	
	//性别比例部分
	private double gendermale;
	private double genderfemale;
	
	
	//用户情绪比例
	private double badsentiment;
	private double neutralsentiment;
	private double goodsentiment;
	
	//年龄所占阶段
	private double upage15;
	private double upage25;
	private double upage35;
	private double upage45;
	private double upother;
	
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
	@Column(name="gendermale")
	public double getGendermale() {
		return gendermale;
	}
	@Column(name="genderfemale")
	public double getGenderfemale() {
		return genderfemale;
	}
	@Column(name="badsentiment")
	public double getBadsentiment() {
		return badsentiment;
	}
	@Column(name="neutralsentiment")
	public double getNeutralsentiment() {
		return neutralsentiment;
	}
	@Column(name="goodsentiment")
	public double getGoodsentiment() {
		return goodsentiment;
	}
	@Column(name="upage15")
	public double getUpage15() {
		return upage15;
	}
	@Column(name="upage25")
	public double getUpage25() {
		return upage25;
	}
	@Column(name="upage35")
	public double getUpage35() {
		return upage35;
	}
	@Column(name="upage45")
	public double getUpage45() {
		return upage45;
	}
	@Column(name="upother")
	public double getUpother() {
		return upother;
	}
	public void setGendermale(double gendermale) {
		this.gendermale = gendermale;
	}
	public void setGenderfemale(double genderfemale) {
		this.genderfemale = genderfemale;
	}
	public void setBadsentiment(double badsentiment) {
		this.badsentiment = badsentiment;
	}
	public void setNeutralsentiment(double neutralsentiment) {
		this.neutralsentiment = neutralsentiment;
	}
	public void setGoodsentiment(double goodsentiment) {
		this.goodsentiment = goodsentiment;
	}
	public void setUpage15(double upage15) {
		this.upage15 = upage15;
	}
	public void setUpage25(double upage25) {
		this.upage25 = upage25;
	}
	public void setUpage35(double upage35) {
		this.upage35 = upage35;
	}
	public void setUpage45(double upage45) {
		this.upage45 = upage45;
	}
	public void setUpother(double upother) {
		this.upother = upother;
	}
	
}
