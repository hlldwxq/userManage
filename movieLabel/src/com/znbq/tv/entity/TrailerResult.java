package com.znbq.tv.entity;

public class TrailerResult {
	private String similarTvName;
	
	//后期加词频//
	
	
	private String director;
	private String topic;
	private String producer;
	private String starring;
	private String fans;
	
	private String similarTvType;
	private String referTvName;
    private String emotionAnalysis;
	
	//后期情感分析可视化//
	
	private String[] suggest=new String[3];
	
	public String getSimilarTvName() {
		return similarTvName;
	}

	public void setSimilarTvName(String similarTvName) {
		this.similarTvName = similarTvName;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	public String getStarring() {
		return starring;
	}

	public void setStarring(String starring) {
		this.starring = starring;
	}

	public String getFans() {
		return fans;
	}

	public void setFans(String fans) {
		this.fans = fans;
	}

	public String getSimilarTvType() {
		return similarTvType;
	}

	public void setSimilarTvType(String similarTvType) {
		this.similarTvType = similarTvType;
	}

	public String getReferTvName() {
		return referTvName;
	}

	public void setReferTvName(String referTvName) {
		this.referTvName = referTvName;
	}

	public String getEmotionAnalysis() {
		return emotionAnalysis;
	}

	public void setEmotionAnalysis(String emotionAnalysis) {
		this.emotionAnalysis = emotionAnalysis;
	}

	public String[] getSuggest() {
		return suggest;
	}

	public void setSuggest(String[] suggest) {
		this.suggest = suggest;
	}

	
}
