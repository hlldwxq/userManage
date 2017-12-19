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
@Table(name="news_hottopic")
public class NewsHotTopic implements Serializable {
	private int id;
	
	private String year;
	private String month;
	
	private String topic;//主题
	private String label;//主题对应下的标签
	private double hotnum;//标签对应的热度;
	
	@Id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="year",nullable=false,length=4)
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}

	@Column(name="month",nullable=false,length=2)
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	
	@Column(name="topic",length=30)
	public String getTopic() {
		return topic;
	}
	@Column(name="label",length=30)
	public String getLabel() {
		return label;
	}
	@Column(name="hotnum")
	public double getHotnum() {
		return hotnum;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public void setHotnum(double hotnum) {
		this.hotnum = hotnum;
	}
	
}
