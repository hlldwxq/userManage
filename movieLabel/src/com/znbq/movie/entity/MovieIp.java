package com.znbq.movie.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * MovieIp实体类
 */
@Entity
@Table(name = "movie_ip")
public class MovieIp {
	
	private String id;
	private String movieName;
	private String original;
	private String originalAuthor;
	private String movieType;
	private String score;
	private String boxOffice;
	private String hotLevel;
	private String searchIndex;
	private String evaluation;
	
	@Id
	@Column(name="id",nullable=false,unique=false)
    @GenericGenerator(name="generator",strategy="uuid")
    @GeneratedValue(generator="generator")
	public String getId(){
		return id;
	}
	
	public void setId(String id){
		this.id=id;
	}
	
	@Column(name = "movie_name", nullable = false)
	public String getMovieName() {
		return movieName;
	}
	
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	
	@Column(name = "original", nullable = false)
	public String getOriginal() {
		return original;
	}
	
	public void setOriginal(String original) {
		this.original = original;
	}
	
	@Column(name = "original_author", nullable = false)
	public String getOriginalAuthor() {
		return originalAuthor;
	}
	
	public void setOriginalAuthor(String originalAuthor) {
		this.originalAuthor = originalAuthor;
	}
	
	@Column(name = "movie_type", nullable = false)
	public String getMovieType() {
		return movieType;
	}
	
	public void setMovieType(String movieType) {
		this.movieType = movieType;
	}
	
	@Column(name = "score", nullable = false)
	public String getScore() {
		return score;
	}
	
	public void setScore(String score) {
		this.score = score;
	}
	
	@Column(name = "box_office", nullable = false)
	public String getBoxOffice() {
		return boxOffice;
	}
	
	public void setBoxOffice(String boxOffice) {
		this.boxOffice = boxOffice;
	}
	
	@Column(name = "hot_level", nullable = false)
	public String getHotLevel() {
		return hotLevel;
	}
	
	public void setHotLevel(String hotLevel) {
		this.hotLevel = hotLevel;
	}
	
	@Column(name = "search_index", nullable = false)
	public String getSearchIndex() {
		return searchIndex;
	}
	
	public void setSearchIndex(String searchIndex) {
		this.searchIndex = searchIndex;
	}
	
	@Column(name = "Evaluation", nullable = false)
	public String getEvaluation() {
		return evaluation;
	}
	
	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}
}
