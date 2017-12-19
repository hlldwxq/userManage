package com.znbq.movie.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * ScreenwriterInfo实体类
 */

@Entity
@Table(name = "screenwriter_info")
public class ScreenwriterInfo {
	
	private String id;
	private String movieName;
	private String screenwriter_name_Chinese;
	private String screenwriter_name_English;
	private String otherName;
	private String personInfo;
	private String allMovie;
	private String representativeMovie;
	private String mainAwards;
	private String birthDate;
	private String birthArea;
	private String height;
	private String weight;
	private String originArea;
	private String nationality;
	private String nation;
	private String brokerageAgency;
	private String occupation;
	private String graduatedUniversity;
	private String maritalStatus;
	private String spouse;
	private String kid;
	
	@Id
    @Column(name="id",nullable=true,unique=false)
    @GenericGenerator(name="generator",strategy="uuid")
    @GeneratedValue(generator="generator")
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	@Column(name = "movie_name", nullable = false)
	public String getMovieName() {
		return movieName;
	}
	
	public void setMovieName(String movie_name) {
		this.movieName = movie_name;
	}
	
	@Column(name = "screenwriter_name_Chinese", nullable = false)
	public String getScreenwriter_name_Chinese() {
		return screenwriter_name_Chinese;
	}
	
	public void setScreenwriter_name_Chinese(String screenwriter_name_Chinese) {
		this.screenwriter_name_Chinese = screenwriter_name_Chinese;
	}
	
	@Column(name = "screenwriter_name_English", nullable = false)
	public String getScreenwriter_name_English() {
		return screenwriter_name_English;
	}
	
	public void setScreenwriter_name_English(String screenwriter_name_English) {
		this.screenwriter_name_English = screenwriter_name_English;
	}
	
	@Column(name = "other_name", nullable = false)
	public String getOtherName() {
		return otherName;
	}
	
	public void setOtherName(String other_name) {
		this.otherName = other_name;
	}
	
	@Column(name = "person_info", nullable = false)
	public String getPersonInfo() {
		return personInfo;
	}
	
	public void setPersonInfo(String person_info) {
		this.personInfo = person_info;
	}
	
	@Column(name = "all_movie", nullable = false)
	public String getAllMovie() {
		return allMovie;
	}
	
	public void setAllMovie(String all_movie) {
		this.allMovie = all_movie;
	}
	
	@Column(name = "representative_movie", nullable = false)
	public String getRepresentativeMovie() {
		return representativeMovie;
	}
	
	public void setRepresentativeMovie(String representative_movie) {
		this.representativeMovie = representative_movie;
	}
	
	@Column(name = "main_awards", nullable = false)
	public String getMainAwards() {
		return mainAwards;
	}
	
	public void setMainAwards(String main_awards) {
		this.mainAwards = main_awards;
	}
	
	@Column(name = "birth_data", nullable = false)
	public String getBirthDate() {
		return birthDate;
	}
	
	public void setBirthDate(String birth_date) {
		this.birthDate = birth_date;
	}
	
	@Column(name = "birth_area", nullable = false)
	public String getBirthArea() {
		return birthArea;
	}
	
	public void setBirthArea(String birth_area) {
		this.birthArea = birth_area;
	}
	
	@Column(name = "height", nullable = false)
	public String getHeight() {
		return height;
	}
	
	public void setHeight(String height) {
		this.height = height;
	}
	
	@Column(name = "weight", nullable = false)
	public String getWeight() {
		return weight;
	}
	
	public void setWeight(String weight) {
		this.weight = weight;
	}
	
	@Column(name = "origin_area", nullable = false)
	public String getOriginArea() {
		return originArea;
	}
	
	public void setOriginArea(String originArea) {
		this.originArea = originArea;
	}
	
	@Column(name = "nationality", nullable = false)
	public String getNationality() {
		return nationality;
	}
	
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	
	@Column(name = "nation", nullable = false)
	public String getNation() {
		return nation;
	}
	
	public void setNation(String nation) {
		this.nation = nation;
	}
	
	@Column(name = "Brokerage_agency", nullable = false)
	public String getBrokerageAgency() {
		return brokerageAgency;
	}
	
	public void setBrokerageAgency(String brokerageAgency) {
		this.brokerageAgency = brokerageAgency;
	}
	
	@Column(name = "Occupation", nullable = false)
	public String getOccupation() {
		return occupation;
	}
	
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	
	@Column(name = "graduated_university", nullable = false)
	public String getGraduatedUniversity() {
		return graduatedUniversity;
	}
	
	public void setGraduatedUniversity(String graduatedUniversity) {
		this.graduatedUniversity = graduatedUniversity;
	}
	
	@Column(name = "Marital_status", nullable = false)
	public String getMaritalStatus() {
		return maritalStatus;
	}
	
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	
	@Column(name = "spouse", nullable = false)
	public String getSpouse() {
		return spouse;
	}

	public void setSpouse(String spouse) {
		this.spouse = spouse;
	}

	@Column(name = "kid", nullable = false)
	public String getKid() {
		return kid;
	}

	public void setKid(String kid) {
		this.kid = kid;
	}

}
