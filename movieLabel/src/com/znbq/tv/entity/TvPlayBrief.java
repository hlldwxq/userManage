package com.znbq.tv.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="tv_play")
public class TvPlayBrief {

	private int id;
	private String tvName;
	
	//时光网
	private String tvScoreSG;
	private String tvPeopleNumSG;
	//豆瓣
	private String tvScoreDB;
	private String tvPeopleNumDB;
	
	private String type;
	private String country;
	private String language;
	private String firstShow;
	private String episodeNum;
	private String episodeLength;
	private String briefIntroduction;
	
	@Id
    @Column(name="序号",nullable=false,unique=true)
    @GenericGenerator(name="generator",strategy="uuid")
    @GeneratedValue(generator="generator")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "电视剧名称", nullable = false)
	public String getTvName() {
		return tvName;
	}
	public void setTvName(String tvName) {
		this.tvName = tvName;
	}
	
	@Column(name = "时光网评分")
	public String getTvScoreSG() {
		return tvScoreSG;
	}
	public void setTvScoreSG(String tvScoreSG) {
		this.tvScoreSG = tvScoreSG;
	}
	
	@Column(name = "时光网评分人数")
	public String getTvPeopleNumSG() {
		return tvPeopleNumSG;
	}
	public void setTvPeopleNumSG(String tvPeopleNumSG) {
		this.tvPeopleNumSG = tvPeopleNumSG;
	}
	
	@Column(name = "豆瓣网评分")
	public String getTvScoreDB() {
		return tvScoreDB;
	}
	public void setTvScoreDB(String tvScoreDB) {
		this.tvScoreDB = tvScoreDB;
	}
	
	@Column(name = "豆瓣网评分人数")
	public String getTvPeopleNumDB() {
		return tvPeopleNumDB;
	}
	public void setTvPeopleNumDB(String tvPeopleNumDB) {
		this.tvPeopleNumDB = tvPeopleNumDB;
	}
	
	@Column(name = "类型")
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Column(name = "国家地区")
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	@Column(name = "语言")
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	
	@Column(name = "首播")
	public String getFirstShow() {
		return firstShow;
	}
	public void setFirstShow(String firstShow) {
		this.firstShow = firstShow;
	}
	
	@Column(name = "集数")
	public String getEpisodeNum() {
		return episodeNum;
	}
	public void setEpisodeNum(String episodeNum) {
		this.episodeNum = episodeNum;
	}
	
	@Column(name = "单集片长")
	public String getEpisodeLength() {
		return episodeLength;
	}
	public void setEpisodeLength(String episodeLength) {
		this.episodeLength = episodeLength;
	}
	
	@Column(name = "剧情简介")
	public String getBriefIntroduction() {
		return briefIntroduction;
	}
	public void setBriefIntroduction(String briefIntroduction) {
		this.briefIntroduction = briefIntroduction;
	}
	
	
}
