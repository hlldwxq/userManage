package com.wq;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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
	
	private Integer projectId;
	private String projectName;
	private Integer projectTeacher;
	private Integer projectLeading;
	private String projectExpert;
	private Integer projectDate; 
	private Integer projectState;
	private Integer projectType;
	private Integer firstGrade;
	private Integer secondGrade;
	private Integer projectLevel;
	private String teacherName;
	private String leadingName;
	private String expertName;
	
	public StudentProject(){}
	
	@Id
	@Column(name="projectId")
	@GeneratedValue(strategy = GenerationType.IDENTITY) //h  
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
	public Integer getProjectTeacher(){
		return projectTeacher;
	}

	public void setProjectTeacher(Integer projectTeacher){
		this.projectTeacher = projectTeacher;
	}
	
	@Column(name="projectLeading")
	public Integer getProjectLeading(){
		return projectLeading;
	}

	public void setProjectLeading(Integer projectLeading){
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
	
	@Column(name="projectExpert")
	public String getProjectExpert(){
		return projectExpert;
	}
	
	public void setProjectExpert(String projectExpert){
		this.projectExpert = projectExpert;
	}
	
	@Column(name="projectLevel")
	public Integer getProjectLevel(){
		return projectLevel;
	}
	
	public void setProjectLevel(Integer projectLevel){
		this.projectLevel = projectLevel;
	}
	
	@Column(name="firstGrade")
	public Integer getFirstGrade(){
		return firstGrade;
	}
	
	public void setFirstGrade(Integer firstGrade){
		this.firstGrade = firstGrade;
	}
	
	@Column(name="secondGrade")
	public Integer getSecondGrade(){
		return secondGrade;
	}
	
	public void setsecondGrade(Integer secondGrade){
		this.secondGrade = secondGrade;
	}
	
	public String getTeacherName(){
		return teacherName;
	}
	
	public void setTeacherName(String teacherName){
		this.teacherName = teacherName;
	}
	public String getLeadingName(){
		return leadingName;
	}
	
	public void setLeadingName(String leadingName){
		this.leadingName = leadingName;
	}
	public String getExpertName(){
		return expertName;
	}
	
	public void setExpertName(String expertName){
		this.expertName = expertName;
	}
}
