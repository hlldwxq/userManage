package com.znbq.movie.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * StarringInfo实体类
 */

@Entity
@Table(name = "starring_info")
public class StarringInfo {
	
	private String id;
	private String movieName;
	private String actorNameChinese;
	private String actorNameEnglish;
	private String otherName;
	private String personInfo;
	private String representativeMovie;
	private String allMovie;
	private String mainAwards;
	private String birthDate;
	private String birthArea;
	private String nativePlace;
	private String nation;
	private String nationality;
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
	private String pic;

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
	
	@Column(name = "片名", nullable = false)
	public String getMovieName() {
		return movieName;
	}
	
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	
	@Column(name = "演员中文名", nullable = false)
	public String getActorNameChinese() {
		return actorNameChinese;
	}
	
	public void setActorNameChinese(String actorNameChinese) {
		this.actorNameChinese = actorNameChinese;
	}
	
	@Column(name = "外文名", nullable = false)
	public String getActorNameEnglish() {
		return actorNameEnglish;
	}
	
	public void setActorNameEnglish(String actorNameEnglish) {
		this.actorNameEnglish = actorNameEnglish;
	}
	
	@Column(name = "别名", nullable = false)
	public String getOtherName() {
		return otherName;
	}
	
	public void setOtherName(String otherName) {
		this.otherName = otherName;
	}
	
	@Column(name = "个人简介", nullable = false)
	public String getPersonInfo() {
		return personInfo;
	}
	
	public void setPersonInfo(String personInfo) {
		this.personInfo = personInfo;
	}
	
	@Column(name = "代表作品", nullable = false)
	public String getRepresentativeMovie() {
		return representativeMovie;
	}
	
	public void setRepresentativeMovie(String representativeMovie) {
		this.representativeMovie = representativeMovie;
	}
	
	@Column(name = "曾出演", nullable = false)
	public String getAllMovie() {
		return allMovie;
	}
	
	public void setAllMovie(String allMovie) {
		this.allMovie = allMovie;
	}
	
	@Column(name = "主要奖项", nullable = false)
	public String getMainAwards() {
		return mainAwards;
	}
	
	public void setMainAwards(String mainAwards) {
		this.mainAwards = mainAwards;
	}
	
	@Column(name = "出生日期", nullable = false)
	public String getBirthDate() {
		return birthDate;
	}
	
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	
	@Column(name = "出生地", nullable = false)
	public String getBirthArea() {
		return birthArea;
	}
	
	public void setBirthArea(String birthArea) {
		this.birthArea = birthArea;
	}
	
	@Column(name = "籍贯", nullable = false)
	public String getNativePlace() {
		return nativePlace;
	}
	
	public void setNativePlace(String nativePlace) {
		this.nativePlace = nativePlace;
	}
	
	@Column(name = "国籍", nullable = false)
	public String getNation() {
		return nation;
	}
	
	public void setNation(String nation) {
		this.nation = nation;
	}
	
	@Column(name = "民族", nullable = false)
	public String getNationality() {
		return nationality;
	}
	
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	
	@Column(name = "血型", nullable = false)
	public String getBloodType() {
		return bloodType;
	}
	
	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}
	
	@Column(name = "身高", nullable = false)
	public String getHeight() {
		return height;
	}
	
	public void setHeight(String height) {
		this.height = height;
	}
	
	@Column(name = "体重", nullable = false)
	public String getWeight() {
		return weight;
	}
	
	public void setWeight(String weight) {
		this.weight = weight;
	}
	
	@Column(name = "星座", nullable = false)
	public String getConstellation() {
		return constellation;
	}
	
	public void setConstellation(String constellation) {
		this.constellation = constellation;
	}
	
	@Column(name = "经纪公司", nullable = false)
	public String getBrokerageAgency() {
		return brokerageAgency;
	}
	
	public void setBrokerageAgency(String brokerageAgency) {
		this.brokerageAgency = brokerageAgency;
	}
	
	@Column(name = "职业", nullable = false)
	public String getOccupation() {
		return occupation;
	}
	
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	
	@Column(name = "毕业院校", nullable = false)
	public String getGraduatedUniversity() {
		return graduatedUniversity;
	}
	
	public void setGraduatedUniversity(String graduatedUniversity) {
		this.graduatedUniversity = graduatedUniversity;
	}
	
	@Column(name = "婚姻状况", nullable = false)
	public String getMaritalStatus() {
		return maritalStatus;
	}
	
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	
	@Column(name = "配偶", nullable = false)
	public String getSpouse() {
		return spouse;
	}
	
	public void setSpouse(String spouse) {
		this.spouse = spouse;
	}
	
	@Column(name = "孩子", nullable = false)
	public String getKid() {
		return kid;
	}
	
	public void setKid(String kid) {
		this.kid = kid;
	}
	
	@Column(name = "图片", nullable = false)
	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

}
