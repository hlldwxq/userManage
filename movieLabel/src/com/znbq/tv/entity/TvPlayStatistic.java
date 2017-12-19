package com.znbq.tv.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tv_statistic")
public class TvPlayStatistic {

	private int id;
	private String name;
	private String rating;
	private String startTime;
	private String sexRange;
	private String ageRange;
	private String satisfaction;
	
	@Id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "电视剧名", nullable = false)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name = "收视率")
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	@Column(name = "开播档期")
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	@Column(name = "性别分布")
	public String getSexRange() {
		return sexRange;
	}
	public void setSexRange(String sexRange) {
		this.sexRange = sexRange;
	}
	@Column(name = "年龄分布")
	public String getAgeRange() {
		return ageRange;
	}
	public void setAgeRange(String ageRange) {
		this.ageRange = ageRange;
	}
	@Column(name = "满意度")
	public String getSatisfaction() {
		return satisfaction;
	}
	public void setSatisfaction(String satisfaction) {
		this.satisfaction = satisfaction;
	}
}
