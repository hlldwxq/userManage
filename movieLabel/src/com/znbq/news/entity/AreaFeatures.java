package com.znbq.news.entity;

import java.io.Serializable;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "news_areafeature")

public class AreaFeatures implements Serializable{
	public AreaFeatures() {
		super();
	}
	private String year;
	private String month;
	private String day;
	private int emotion;
	private int culture;
	private int	nation;
	private int city;
	
	
	private String culturetxt;
	private String nationtxt;
	private String citytxt;
	private String emotiontxt;
	
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
	
	@Column(name="emotion")
	public int getEmotion() {
		return emotion;
	}
	public void setemotion(int emotion) {
		this.emotion = emotion;
	}
	
	@Column(name="culture")
	public int getCulture() {
		return culture;
	}
	public void setCulture(int culture) {
		this.culture = culture;
	}
	
	@Column(name="nation")
	public int getNation() {
		return nation;
	}
	public void setNation(int nation) {
		this.nation = nation;
	}
	
	@Column(name="city")
	public int getCity() {
		return city;
	}
	public void setCity(int city) {
		this.city = city;
	}
	
	@Column(name="emotiontxt")
	public String getEmotiontxt() {
		return emotiontxt;
	}
	@Column(name="culturetxt")
	public String getCulturetxt() {
		return culturetxt;
	}
	@Column(name="nationtxt")
	public String getNationtxt() {
		return nationtxt;
	}
	@Column(name="citytxt")
	public String getCitytxt() {
		return citytxt;
	}
	
	public void setEmotion(int emotion) {
		this.emotion = emotion;
	}
	public void setEmotiontxt(String emotiontxt) {
		this.emotiontxt = emotiontxt;
	}
	public void setCulturetxt(String culturetxt) {
		this.culturetxt = culturetxt;
	}
	public void setNationtxt(String nationtxt) {
		this.nationtxt = nationtxt;
	}
	public void setCitytxt(String citytxt) {
		this.citytxt = citytxt;
	}
}
