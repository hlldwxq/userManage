package com.znbq.movie.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * DirectorInfo实体类
 */
@Entity
@Table(name = "director_info")
public class DirectorInfo {
	
	private String moveName;
	private String directorNameChinese;
	private String directorNameEnglish;
	private String otherName;
	private String personInfo;
	private String allMovie;
	private String representativeMovie;
	private String mainAwards;
	private String birthDate;
	private String birthArea;
	private String orginArea;
	private String nationality;
	private String nation;
	private String bloodType;
	private String height;
	private String weight;
	private String constellation;
	private String brokerageAgency;
	private String occupation;
	private String graduatedUniversity;
	private String maritalStatus;
	private String spouse;
	private String kid;
	private String id;
	
	@Column(name = "move_name")
	public String getMoveName() {
		return moveName;
	}
	
	public void setMoveName(String moveName) {
		this.moveName = moveName;
	}
	
	@Column(name = "director_name_Chinese")
	public String getDirectorNameChinese() {
		return directorNameChinese;
	}
	
	public void setDirectorNameChinese(String directorNameChinese) {
		this.directorNameChinese = directorNameChinese;
	}
	
	@Column(name = "director_name_English")
	public String getDirectorNameEnglish() {
		return directorNameEnglish;
	}
	
	public void setDirectorNameEnglish(String directorNameEnglish) {
		this.directorNameEnglish = directorNameEnglish;
	}
	
	@Column(name = "other_name")
	public String getOtherName() {
		return otherName;
	}
	
	public void setOtherName(String otherName) {
		this.otherName = otherName;
	}
	
	@Column(name = "person_info")
	public String getPersonInfo() {
		return personInfo;
	}
	
	public void setPersonInfo(String personInfo) {
		this.personInfo = personInfo;
	}
	
	@Column(name = "all_movie")
	public String getAllMovie() {
		return allMovie;
	}
	
	public void setAllMovie(String allMovie) {
		this.allMovie = allMovie;
	}
	
	@Column(name = "representative_movie")
	public String getRepresentativeMovie() {
		return representativeMovie;
	}
	
	public void setRepresentativeMovie(String representativeMovie) {
		this.representativeMovie = representativeMovie;
	}
	
	@Column(name = "main_awards")
	public String getMainAwards() {
		return mainAwards;
	}
	
	public void setMainAwards(String mainAwards) {
		this.mainAwards = mainAwards;
	}
	
	@Column(name = "birth_data")
	public String getBirthDate() {
		return birthDate;
	}
	
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	
	@Column(name = "birth_area")
	public String getBirthArea() {
		return birthArea;
	}
	
	public void setBirthArea(String birthArea) {
		this.birthArea = birthArea;
	}
	
	@Column(name = "origin_area")
	public String getOrginArea() {
		return orginArea;
	}
	
	public void setOrginArea(String orginArea) {
		this.orginArea = orginArea;
	}
	
	@Column(name = "nationality")
	public String getNationality() {
		return nationality;
	}
	
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	
	@Column(name = "nation")
	public String getNation() {
		return nation;
	}
	
	public void setNation(String nation) {
		this.nation = nation;
	}
	
	@Column(name = "Blood_type")
	public String getBloodType() {
		return bloodType;
	}
	
	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}
	
	@Column(name = "height")
	public String getHeight() {
		return height;
	}
	
	public void setHeight(String height) {
		this.height = height;
	}
	
	@Column(name = "weight")
	public String getWeight() {
		return weight;
	}
	
	public void setWeight(String weight) {
		this.weight = weight;
	}
	
	@Column(name = "constellation")
	public String getConstellation() {
		return constellation;
	}
	
	public void setConstellation(String constellation) {
		this.constellation = constellation;
	}
	
	@Column(name = "Brokerage_agency")
	public String getBrokerageAgency() {
		return brokerageAgency;
	}
	
	public void setBrokerageAgency(String brokerageAgency) {
		this.brokerageAgency = brokerageAgency;
	}
	
	@Column(name = "Occupation")
	public String getOccupation() {
		return occupation;
	}
	
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	
	@Column(name = "graduated_university")
	public String getGraduatedUniversity() {
		return graduatedUniversity;
	}
	
	public void setGraduatedUniversity(String graduatedUniversity) {
		this.graduatedUniversity = graduatedUniversity;
	}
	
	@Column(name = "Marital_status")
	public String getMaritalStatus() {
		return maritalStatus;
	}
	
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	
	@Column(name = "spouse")
	public String getSpouse() {
		return spouse;
	}
	
	public void setSpouse(String spouse) {
		this.spouse = spouse;
	}
	
	@Column(name = "kid")
	public String getKid() {
		return kid;
	}
	
	public void setKid(String kid) {
		this.kid = kid;
	}
	
	@Id
	@Column(name="id",nullable=false,unique=false)
    @GenericGenerator(name="generator",strategy="uuid")
    @GeneratedValue(generator="generator")
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
}
