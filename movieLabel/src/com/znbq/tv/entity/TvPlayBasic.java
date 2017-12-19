package com.znbq.tv.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tv_play_all")
public class TvPlayBasic {

	private int id;
	private String tvName;
	private String ipType;
	private String ipName;
	private String ipAuthor;
	private String starring;
	private String coStarring;
	
	private String masterDirector;
	private String executiveDirector;
	private String assistantDirector;
	
	private String effectCompany;

	@Id
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name="电视剧名称")
	public String getTvName() {
		return tvName;
	}

	public void setTvName(String tvName) {
		this.tvName = tvName;
	}

	@Column(name="ip类型")
	public String getIpType() {
		return ipType;
	}

	public void setIpType(String ipType) {
		this.ipType = ipType;
	}

	@Column(name="ip名称")
	public String getIpName() {
		return ipName;
	}

	public void setIpName(String ipName) {
		this.ipName = ipName;
	}

	@Column(name="原作者")
	public String getIpAuthor() {
		return ipAuthor;
	}

	public void setIpAuthor(String ipAuthor) {
		this.ipAuthor = ipAuthor;
	}

	@Column(name="领衔主演")
	public String getStarring() {
		return starring;
	}

	public void setStarring(String starring) {
		this.starring = starring;
	}

	@Column(name="联合主演")
	public String getCoStarring() {
		return coStarring;
	}

	public void setCoStarring(String coStarring) {
		this.coStarring = coStarring;
	}

	@Column(name="导演")
	public String getMasterDirector() {
		return masterDirector;
	}

	public void setMasterDirector(String masterDirector) {
		this.masterDirector = masterDirector;
	}

	@Column(name="执行导演")
	public String getExecutiveDirector() {
		return executiveDirector;
	}

	public void setExecutiveDirector(String executiveDirector) {
		this.executiveDirector = executiveDirector;
	}

	@Column(name="副导演")
	public String getAssistantDirector() {
		return assistantDirector;
	}

	public void setAssistantDirector(String assistantDirector) {
		this.assistantDirector = assistantDirector;
	}

	@Column(name="特效制作")
	public String getEffectCompany() {
		return effectCompany;
	}

	public void setEffectCompany(String effectCompany) {
		this.effectCompany = effectCompany;
	}
	
}
