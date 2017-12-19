package com.znbq.tv.entity;

public class CreatorInput {

	private String topic;
	private String director;
	private String actress;
	private String actor;
	private String maker;
	private String effect;
	
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActress() {
		return actress;
	}
	public void setActress(String actress) {
		this.actress = actress;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public String getEffect() {
		return effect;
	}
	public void setEffect(String effect) {
		this.effect = effect;
	}
	
	public boolean checkEmpty()
	{
		if(this.getTopic()!=""&&this.getActor()!=""&&this.getActress()!=""&&this.getDirector()!=""&&this.getMaker()!=""&&this.getEffect()!="")
		{
			return true;
		}
		else return false;
	}
	
}
