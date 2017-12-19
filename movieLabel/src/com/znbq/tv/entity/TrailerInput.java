package com.znbq.tv.entity;

public class TrailerInput {

	private String tvName;
	private String director;
	private String actor;
	private String producer;
	private String issuer;
	private String type;
	private String script;
	public String getTvName() {
		return tvName;
	}
	public void setTvName(String tvName) {
		this.tvName = tvName;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getProducer() {
		return producer;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	public String getIssuer() {
		return issuer;
	}
	public void setIssuer(String lssuer) {
		this.issuer = lssuer;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getScript() {
		return script;
	}
	public void setScript(String script) {
		this.script = script;
	}
	public boolean checkEmpty() {
		// TODO Auto-generated method stub
		if(this.getDirector()!=""&&this.getActor()!=""&&this.getProducer()!=""&&this.getIssuer()!=""&&this.getType()!=""&&this.getScript()!="")
			return true;
		else return false;
			
	}
	
}
