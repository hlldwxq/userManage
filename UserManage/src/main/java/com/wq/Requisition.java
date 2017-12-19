package com.wq;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="requeisition")
public class Requisition {
	
	private Integer projectDate; 
	private Integer projectLevel;
	private Integer projectType;
	private Integer projectId;
	private String projectName;
	private Date fillDate;
	private String projectFund;
	private Date beginDate;
	private Date endDate;
	private String leadingName;
	private String leadingNum;
	private String leadingGrade;
	private String leadingMajor;
	private String leadingPhone;
	private String leadingEmail;
	private String studentName1;
	private String studentNum1;
	private String grade1;
	private String major1;
	private String studentPhone1;
	private String studentEmail1;
	
	private String studentName2;
	private String studentNum2;
	private String grade2;
	private String major2;
	private String studentPhone2;
	private String studentEmail2;

	private String studentName3;
	private String studentNum3;
	private String grade3;
	private String major3;
	private String studentPhone3;
	private String studentEmail3;
	
	private String studentName4;
	private String studentNum4;
	private String grade4;
	private String major4;
	private String studentPhone4;
	private String studentEmail4;
	
	private String teacherName;
	private String teacherNum;
	private String job;
	private String teacherPhone;
	private String teacherEmail;
	
	private String applicationReason;
	private String projectMethod;
	private String exceptAchievement;
	private String fundBudget;
	
	@Id   
	@Column(name="projectId")
	@GeneratedValue(strategy = GenerationType.IDENTITY) //h  
	public Integer getProjectId() {
		return projectId;
	}
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	@Column(name="projectName") 
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	@Column(name="fillDate") 
	public Date getFillDate() {
		return fillDate;
	}
	public void setFillDate(Date fillDate) {
		this.fillDate = fillDate;
	}
	@Column(name="projectFund") 
	public String getProjectFund() {
		return projectFund;
	}
	public void setProjectFund(String projectFund) {
		this.projectFund = projectFund;
	}
	@Column(name="beginDate") 
	public Date getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	@Column(name="endDate") 
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	@Column(name="leadingName") 
	public String getLeadingName() {
		return leadingName;
	}
	public void setLeadingName(String leadingName) {
		this.leadingName = leadingName;
	}
	@Column(name="leadingNum") 
	public String getLeadingNum() {
		return leadingNum;
	}
	public void setLeadingNum(String leadingNum) {
		this.leadingNum = leadingNum;
	}
	@Column(name="leadingGrade") 
	public String getLeadingGrade() {
		return leadingGrade;
	}
	public void setLeadingGrade(String leadingGrade) {
		this.leadingGrade = leadingGrade;
	}
	@Column(name="leadingPhone") 
	public String getLeadingPhone() {
		return leadingPhone;
	}
	public void setLeadingPhone(String leadingPhone) {
		this.leadingPhone = leadingPhone;
	}
	@Column(name="leadingMajor") 
	public String getLeadingMajor() {
		return leadingMajor;
	}
	public void setLeadingMajor(String leadingMajor) {
		this.leadingMajor = leadingMajor;
	}
	@Column(name="leadingEmail") 
	public String getLeadingEmail() {
		return leadingEmail;
	}
	public void setLeadingEmail(String leadingEmail) {
		this.leadingEmail = leadingEmail;
	}
	@Column(name="studentName1") 
	public String getStudentName1() {
		return studentName1;
	}
	public void setStudentName1(String studentName1) {
		this.studentName1 = studentName1;
	}
	@Column(name="studentNum1") 
	public String getStudentNum1() {
		return studentNum1;
	}
	public void setStudentNum1(String studentNum1) {
		this.studentNum1 = studentNum1;
	}
	@Column(name="grade1") 
	public String getGrade1() {
		return grade1;
	}
	public void setGrade1(String grade1) {
		this.grade1 = grade1;
	}
	@Column(name="major1") 
	public String getMajor1() {
		return major1;
	}
	public void setMajor1(String major1) {
		this.major1 = major1;
	}
	@Column(name="studentPhone1") 
	public String getStudentPhone1() {
		return studentPhone1;
	}
	public void setStudentPhone1(String studentPhone1) {
		this.studentPhone1 = studentPhone1;
	}
	@Column(name="studentEmail1") 
	public String getStudentEmail1() {
		return studentEmail1;
	}
	public void setStudentEmail1(String studentEmail1) {
		this.studentEmail1 = studentEmail1;
	}
	@Column(name="studentName2") 
	public String getStudentName2() {
		return studentName2;
	}
	public void setStudentName2(String studentName2) {
		this.studentName2 = studentName2;
	}
	@Column(name="studentNum2") 
	public String getStudentNum2() {
		return studentNum2;
	}
	public void setStudentNum2(String studentNum2) {
		this.studentNum2 = studentNum2;
	}
	@Column(name="grade2") 
	public String getGrade2() {
		return grade2;
	}
	public void setGrade2(String grade2) {
		this.grade2 = grade2;
	}
	@Column(name="major2") 
	public String getMajor2() {
		return major2;
	}
	public void setMajor2(String major2) {
		this.major2 = major2;
	}
	@Column(name="studentPhone2") 
	public String getStudentPhone2() {
		return studentPhone2;
	}
	public void setStudentPhone2(String studentPhone2) {
		this.studentPhone2 = studentPhone2;
	}
	@Column(name="studentEmail2") 
	public String getStudentEmail2() {
		return studentEmail2;
	}
	public void setStudentEmail2(String studentEmail2) {
		this.studentEmail2 = studentEmail2;
	}
	@Column(name="studentName3") 
	public String getStudentName3() {
		return studentName3;
	}
	public void setStudentName3(String studentName3) {
		this.studentName3 = studentName3;
	}
	@Column(name="studentNum3") 
	public String getStudentNum3() {
		return studentNum3;
	}
	public void setStudentNum3(String studentNum3) {
		this.studentNum3 = studentNum3;
	}
	@Column(name="grade3") 
	public String getGrade3() {
		return grade3;
	}
	public void setGrade3(String grade3) {
		this.grade3 = grade3;
	}
	@Column(name="major3") 
	public String getMajor3() {
		return major3;
	}
	public void setMajor3(String major3) {
		this.major3 = major3;
	}
	@Column(name="studentPhone3") 
	public String getStudentPhone3() {
		return studentPhone3;
	}
	public void setStudentPhone3(String studentPhone3) {
		this.studentPhone3 = studentPhone3;
	}
	@Column(name="studentEmail3") 
	public String getStudentEmail3() {
		return studentEmail3;
	}
	public void setStudentEmail3(String studentEmail3) {
		this.studentEmail3 = studentEmail3;
	}
	@Column(name="studentName4") 
	public String getStudentName4() {
		return studentName4;
	}
	public void setStudentName4(String studentName4) {
		this.studentName4 = studentName4;
	}
	@Column(name="studentNum4") 
	public String getStudentNum4() {
		return studentNum4;
	}
	public void setStudentNum4(String studentNum4) {
		this.studentNum4 = studentNum4;
	}
	@Column(name="grade4") 
	public String getGrade4() {
		return grade4;
	}
	public void setGrade4(String grade4) {
		this.grade4 = grade4;
	}
	@Column(name="major4") 
	public String getMajor4() {
		return major4;
	}
	public void setMajor4(String major4) {
		this.major4 = major4;
	}
	@Column(name="studentPhone4") 
	public String getStudentPhone4() {
		return studentPhone4;
	}
	public void setStudentPhone4(String studentPhone4) {
		this.studentPhone4 = studentPhone4;
	}
	@Column(name="studentEmail4") 
	public String getStudentEmail4() {
		return studentEmail4;
	}
	public void setStudentEmail4(String studentEmail4) {
		this.studentEmail4 = studentEmail4;
	}
	@Column(name="teacherName") 
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	@Column(name="teacherNum") 
	public String getTeacherNum() {
		return teacherNum;
	}
	public void setTeacherNum(String teacherNum) {
		this.teacherNum = teacherNum;
	}
	@Column(name="job") 
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	@Column(name="teacherPhone") 
	public String getTeacherPhone() {
		return teacherPhone;
	}
	public void setTeacherPhone(String teacherPhone) {
		this.teacherPhone = teacherPhone;
	}
	@Column(name="teacherEmail") 
	public String getTeacherEmail() {
		return teacherEmail;
	}
	public void setTeacherEmail(String teacherEmail) {
		this.teacherEmail = teacherEmail;
	}
	@Column(name="applicationReason") 
	public String getApplicationReason() {
		return applicationReason;
	}
	public void setApplicationReason(String applicationReason) {
		this.applicationReason = applicationReason;
	}
	@Column(name="projectMethod") 
	public String getProjectMethod() {
		return projectMethod;
	}
	public void setProjectMethod(String projectMethod) {
		this.projectMethod = projectMethod;
	}
	@Column(name="exceptAchievement") 
	public String getExceptAchievement() {
		return exceptAchievement;
	}
	public void setExceptAchievement(String exceptAchievement) {
		this.exceptAchievement = exceptAchievement;
	}
	@Column(name="fundBudget") 
	public String getFundBudget() {
		return fundBudget;
	}
	public void setFundBudget(String fundBudget) {
		this.fundBudget = fundBudget;
	}
	@Column(name="projectDate")
	public Integer getProjectDate() {
		return projectDate;
	}
	public void setProjectDate(Integer projectDate) {
		this.projectDate = projectDate;
	}
	@Column(name="projectLevel")
	public Integer getProjectLevel() {
		return projectLevel;
	}
	public void setProjectLevel(Integer projectLevel) {
		this.projectLevel = projectLevel;
	}
	@Column(name="projectType")
	public Integer getProjectType() {
		return projectType;
	}
	public void setProjectType(Integer projectType) {
		this.projectType = projectType;
	}
}
