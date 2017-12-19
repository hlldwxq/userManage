package com.znbq.tv.entity;

public class InvestmentInput {
	private String moviename;
	private String director;
	private String cast;
	private String type;
	private String outline;
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getOutline() {
		return outline;
	}
	public void setOutline(String outline) {
		this.outline = outline;
	}
	public boolean checkEmpty()
	{
		if(this.getCast()!=""&&this.getDirector()!=""&&this.getMoviename()!=""&&this.getOutline()!=""&&this.getType()!="")
			return true;
		else return false;
	}

}
