package com.znbq.movie.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * MovieBasic实体类
 */
@Entity
@Table(name = "movie_basic")
public class MovieBasic {

	private String id;
	private String name;
	private String englishName;
	private String pinyin;
	private String moreName;
	private String original;
	private String ip;
	private String director;
	private String screenwriter;
	private String actors;
	private String type;
	private String filmRating;
	private String boxOffice;
	private String boxOfficeSource;
	private String color;
	private String language;
	private String IMDBNum;
	private String award;
	private String dateOfIssue;
	private String nation;
	private String length;
	private String production;
	private String coProduction;
	private String filmmaker;
	private String producer;
	private String coProducer;
	private String IMDBScore;
	private String IMDBNumOfRaters;
	private String metascoreScore;
	private String mtimeScore;
	private String mtimeNumOfRaters;
	private String doubanScore;
	private String doubanNumOfRaters;
	private String specialEffectsCompany;
	private String imageName;
	private String topic;
	private String supervisor;
	private String FansMarketing;
	private String Male;
	private String Female;
	private String age0To15;
	private String age16To25;
	private String age26To35;
	private String age36To45;
	private String age45;
	private String noun;
	private String nounNum;
	private String verb;
	private String verbNum;
	private String adjective;
	private String adjectiveNum;
	private String emotion;
	

	@Id
	@Column(name="id",nullable=false,unique=true)
    @GenericGenerator(name="generator",strategy="uuid")
    @GeneratedValue(generator="generator")
	public String getId() {
		return id;
	}
    
	public void setId(String id) {
		this.id = id;
	}
	
	@Column(name = "name")
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name="english_name")
	public String getEnglishName() {
		return englishName;
	}

	public void setEnglishName(String englishName) {
		this.englishName = englishName;
	}

	@Column(name = "pinyin")
	public String getPinyin() {
		return pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	@Column(name = "moreName")
	public String getMoreName() {
		return moreName;
	}

	public void setMoreName(String moreName) {
		this.moreName = moreName;
	}

	@Column(name = "original")
	public String getOriginal() {
		return original;
	}

	public void setOriginal(String original) {
		this.original = original;
	}
	
	@Column(name = "ip")
	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}
	
	@Column(name = "director")
	public String getDirector() {
		return director;
	}
	
	public void setDirector(String director) {
		this.director = director;
	}

	@Column(name = "screenwriter")
	public String getScreenwriter() {
		return screenwriter;
	}

	public void setScreenwriter(String screenwriter) {
		this.screenwriter = screenwriter;
	}
	
	@Column(name = "actors")
	public String getActors() {
		return actors;
	}
	
	public void setActors(String actors) {
		this.actors = actors;
	}
	
	@Column(name = "type")
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "film_rating")
	public String getFilmRating() {
		return filmRating;
	}

	public void setFilmRating(String filmRating) {
		this.filmRating = filmRating;
	}
	
	@Column(name = "box_office")
	public String getBoxOffice() {
		return boxOffice;
	}
	
	public void setBoxOffice(String boxOffice) {
		this.boxOffice = boxOffice;
	}
	
	@Column(name = "box_office_source")
	public String getBoxOfficeSource() {
		return boxOfficeSource;
	}

	public void setBoxOfficeSource(String boxOfficeSource) {
		this.boxOfficeSource = boxOfficeSource;
	}


	@Column(name = "color")
	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Column(name = "language")
	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	@Column(name = "imdbnum")
	public String getIMDBNum() {
		return IMDBNum;
	}

	public void setIMDBNum(String iMDBNum) {
		IMDBNum = iMDBNum;
	}

	@Column(name = "award")
	public String getAward() {
		return award;
	}

	public void setAward(String award) {
		this.award = award;
	}

	@Column(name = "date_of_issue")
	public String getDateOfIssue() {
		return dateOfIssue;
	}

	public void setDateOfIssue(String dateOfIssue) {
		this.dateOfIssue = dateOfIssue;
	}

	@Column(name = "nation")
	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	@Column(name = "length")
	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	@Column(name = "production")
	public String getProduction() {
		return production;
	}

	public void setProduction(String production) {
		this.production = production;
	}

	@Column(name = "co_production")
	public String getCoProduction() {
		return coProduction;
	}
	
	public void setCoProduction(String coProduction) {
		this.coProduction = coProduction;
	}
	
	@Column(name = "filmmaker")
	public String getFilmmaker() {
		return filmmaker;
	}

	public void setFilmmaker(String filmmaker) {
		this.filmmaker = filmmaker;
	}

	@Column(name = "producer")
	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	@Column(name = "co_producer")
	public String getCoProducer() {
		return coProducer;
	}

	public void setCoProducer(String coProducer) {
		this.coProducer = coProducer;
	}

	@Column(name = "imdb_score")
	public String getIMDBScore() {
		return IMDBScore;
	}

	public void setIMDBScore(String iMDBScore) {
		IMDBScore = iMDBScore;
	}

	@Column(name = "imdb_num_of_raters")
	public String getIMDBNumOfRaters() {
		return IMDBNumOfRaters;
	}

	public void setIMDBNumOfRaters(String iMDBNumOfRaters) {
		IMDBNumOfRaters = iMDBNumOfRaters;
	}

	@Column(name = "metascore_score")
	public String getMetascoreScore() {
		return metascoreScore;
	}

	public void setMetascoreScore(String metascoreScore) {
		this.metascoreScore = metascoreScore;
	}

	@Column(name = "mtime_score")
	public String getMtimeScore() {
		return mtimeScore;
	}

	public void setMtimeScore(String mtimeScore) {
		this.mtimeScore = mtimeScore;
	}

	@Column(name = "mtime_num_of_raters")
	public String getMtimeNumOfRaters() {
		return mtimeNumOfRaters;
	}

	public void setMtimeNumOfRaters(String mtimeNumOfRaters) {
		this.mtimeNumOfRaters = mtimeNumOfRaters;
	}

	@Column(name = "douban_score")
	public String getDoubanScore() {
		return doubanScore;
	}

	public void setDoubanScore(String doubanScore) {
		this.doubanScore = doubanScore;
	}
	
	@Column(name = "douban_num_of_raters")
	public String getDoubanNumOfRaters() {
		return doubanNumOfRaters;
	}

	public void setDoubanNumOfRaters(String doubanNumOfRaters) {
		this.doubanNumOfRaters = doubanNumOfRaters;
	}
	
	@Column(name = "special_effects_company")
	public String getSpecialEffectsCompany() {
		return specialEffectsCompany;
	}

	public void setSpecialEffectsCompany(String specialEffectsCompany) {
		this.specialEffectsCompany = specialEffectsCompany;
	}
	
	@Column(name = "image_name")
	public String getImageName() {
		return imageName;
	}
	
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	
	@Column(name = "topic")
	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}
	
	@Column(name = "supervisor")
	public String getSupervisor() {
		return supervisor;
	}

	public void setSupervisor(String supervisor) {
		this.supervisor = supervisor;
	}


	@Column(name = "fans_marketing")
	public String getFansMarketing() {
		return FansMarketing;
	}

	public void setFansMarketing(String fansMarketing) {
		FansMarketing = fansMarketing;
	}
	
	@Column(name = "male")
	public String getMale() {
		return Male;
	}

	public void setMale(String male) {
		Male = male;
	}

	@Column(name = "female")
	public String getFemale() {
		return Female;
	}

	public void setFemale(String female) {
		Female = female;
	}

	@Column(name = "age0to15")
	public String getAge0To15() {
		return age0To15;
	}

	public void setAge0To15(String age0To15) {
		this.age0To15 = age0To15;
	}

	@Column(name = "age16to25")
	public String getAge16To25() {
		return age16To25;
	}

	public void setAge16To25(String age16To25) {
		this.age16To25 = age16To25;
	}

	@Column(name = "age26to35")
	public String getAge26To35() {
		return age26To35;
	}

	public void setAge26To35(String age26To35) {
		this.age26To35 = age26To35;
	}

	@Column(name = "age36to45")
	public String getAge36To45() {
		return age36To45;
	}

	public void setAge36To45(String age36To45) {
		this.age36To45 = age36To45;
	}

	@Column(name = "age45")
	public String getAge45() {
		return age45;
	}

	public void setAge45(String age45) {
		this.age45 = age45;
	}

	@Column(name = "noun")
	public String getNoun() {
		return noun;
	}

	public void setNoun(String noun) {
		this.noun = noun;
	}

	@Column(name = "noun_num")
	public String getNounNum() {
		return nounNum;
	}

	public void setNounNum(String nounNum) {
		this.nounNum = nounNum;
	}

	@Column(name = "verb")
	public String getVerb() {
		return verb;
	}

	public void setVerb(String verb) {
		this.verb = verb;
	}

	@Column(name = "verb_num")
	public String getVerbNum() {
		return verbNum;
	}

	public void setVerbNum(String verbNum) {
		this.verbNum = verbNum;
	}

	@Column(name = "adjective")
	public String getAdjective() {
		return adjective;
	}

	public void setAdjective(String adjective) {
		this.adjective = adjective;
	}

	@Column(name = "adjectiveNum")
	public String getAdjectiveNum() {
		return adjectiveNum;
	}

	public void setAdjectiveNum(String adjectiveNum) {
		this.adjectiveNum = adjectiveNum;
	}

	@Column(name = "emotion")
	public String getEmotion() {
		return emotion;
	}

	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}
}
