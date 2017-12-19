package com.wq;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="project")
public class StudentProject {
	public static final int FAIL_PASS = 0;
	public static final int FAIL_KNOT = -1;
	public static final int WAIT_PASS = 1;
	public static final int PASS = 2;
	public static final int MID_TERM = 3;
	public static final int WAIT_KNOT = 4;
	public static final int KNOT = 5;
	
	public static final int NEW_IDEA = 0;
	public static final int OPEN_SHOP = 1;
	
	public static final int COUNTRY = 0;
	public static final int BEIJING = 1;
	
	public static final String[] allLevel = {"国家级","北京市级"};
	public static final String[] allType = {"创新项目","创业项目"};
	public static final String[] allState= {"结项未通过","申请失败","申请中 ","申请完成","中期","后期","已结束"};  
	
	private int id;
	private Integer projectId;
	private String projectName;
	private String projectTeacher;
	private String projectLeading;
	private Integer projectDate; 
	private Integer projectState;
	private Integer projectType;
	private Integer projectLevel;
	private String projectExpert1;
	private String projectExpert2;
	private String projectExpert3;
	private Integer firstGrade1;
	private Integer firstGrade2;
	private Integer firstGrade3;
	private Integer secondGrade1;
	private Integer secondGrade2;
	private Integer secondGrade3;
	private String teacherName;
	private String leadingName;
	private String expertName;
	private String firstTeacher;
	private String secondTeacher;
	public StudentProject(){}
	
	
	@Column(name="projectId") 
	public Integer getProjectId(){
		return projectId;
	}
	
	public void setProjectId(Integer projectId){
		this.projectId = projectId;
	}

	@Column(name="projectName")
	public String getProjectName(){
		return projectName;
	}

	public void setProjectName(String projectName){
		this.projectName = projectName;
	}
	
	@Column(name="projectTeacher")
	public String getProjectTeacher(){
		return projectTeacher;
	}

	public void setProjectTeacher(String projectTeacher){
		this.projectTeacher = projectTeacher;
	}
	
	@Column(name="projectLeading")
	public String getProjectLeading(){
		return projectLeading;
	}

	public void setProjectLeading(String projectLeading){
		this.projectLeading = projectLeading;
	}
	
	@Column(name="projectDate")
	public Integer getProjectDate(){
		return projectDate;
	}
	
	public void setProjectDate(Integer projectDate){
		this.projectDate = projectDate;
	}
	
	@Column(name="projectState")
	public Integer getProjectState(){
		return projectState;
	}
	
	public void setProjectState(Integer projectState){
		this.projectState = projectState;
	}
	
	@Column(name="projectType")
	public Integer getProjectType(){
		return projectType;
	}
	
	public void setProjectType(Integer projectType){
		this.projectType = projectType;
	}
	
	@Column(name="projectExpert1")
	public String getProjectExpert1(){
		return projectExpert1;
	}
	
	public void setProjectExpert1(String projectExpert1){
		this.projectExpert1 = projectExpert1;
	}

	@Column(name="projectExpert2")
	public String getProjectExpert2(){
		return projectExpert2;
	}
	
	public void setProjectExpert2(String projectExpert2){
		this.projectExpert2 = projectExpert2;
	}
	@Column(name="projectExpert3")
	public String getProjectExpert3(){
		return projectExpert3;
	}
	
	public void setProjectExpert3(String projectExpert3){
		this.projectExpert3 = projectExpert3;
	}
	@Column(name="projectLevel")
	public Integer getProjectLevel(){
		return projectLevel;
	}
	
	public void setProjectLevel(Integer projectLevel){
		this.projectLevel = projectLevel;
	}
	
	@Column(name="firstGrade1")
	public Integer getFirstGrade1(){
		return firstGrade1;
	}
	
	public void setFirstGrade1(Integer firstGrade1){
		this.firstGrade1 = firstGrade1;
	}
	
	@Column(name="firstGrade2")
	public Integer getFirstGrade2(){
		return firstGrade2;
	}
	
	public void setFirstGrade2(Integer firstGrade2){
		this.firstGrade2 = firstGrade2;
	}
	@Column(name="firstGrade3")
	public Integer getFirstGrade3(){
		return firstGrade3;
	}
	
	public void setFirstGrade3(Integer firstGrade3){
		this.firstGrade3 = firstGrade3;
	}
	
	@Column(name="secondGrade3")
	public Integer getSecondGrade3(){
		return secondGrade3;
	}
	
	public void setsecondGrade3(Integer secondGrade3){
		this.secondGrade3 = secondGrade3;
	}
	
	@Column(name="secondGrade2")
	public Integer getSecondGrade2(){
		return secondGrade2;
	}
	
	public void setsecondGrade2(Integer secondGrade2){
		this.secondGrade2 = secondGrade2;
	}
	
	@Column(name="secondGrade1")
	public Integer getSecondGrade1(){
		return secondGrade1;
	}
	
	public void setsecondGrade1(Integer secondGrade1){
		this.secondGrade1 = secondGrade1;
	}
	@Column(name="teacherName")
	public String getTeacherName(){
		return teacherName;
	}
	
	public void setTeacherName(String teacherName){
		this.teacherName = teacherName;
	}
	@Column(name="leadingName")
	public String getLeadingName(){
		return leadingName;
	}
	
	public void setLeadingName(String leadingName){
		this.leadingName = leadingName;
	}
	@Column(name="expertName")
	public String getExpertName(){
		return expertName;
	}
	
	public void setExpertName(String expertName){
		this.expertName = expertName;
	}
	@Column(name="firstTeacher")
	public String getFirstTeacher() {
		return firstTeacher;
	}

	public void setFirstTeacher(String firstTeacher) {
		this.firstTeacher = firstTeacher;
	}
	@Column(name="secondTeacher")
	public String getSecondTeacher() {
		return secondTeacher;
	}

	public void setSecondTeacher(String secondTeacher) {
		this.secondTeacher = secondTeacher;
	}
	
	@Id
    @Column(name="id") 
	@GeneratedValue(strategy = GenerationType.IDENTITY) //h  
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
