package com.wq.Service;

import java.util.List;

import com.wq.Requisition;
import com.wq.StudentProject;

public interface ProjectService {
	List<StudentProject> listProjectByStudent(String studentId);
	List<StudentProject> listProjectByTeacher(String teacherId);
	List<StudentProject> listProjectByDateAndLevel(int year,int level);
	List<StudentProject> listProjectByStatus(int status);
	List<StudentProject> listProjectByExpert(String teacherId);
	StudentProject getProjectById(int projectId);
	void updateFirstGrade(int firstGrade,int projectId,String teacherId);
	void updateSecondGrade(int secondGrade,int projectId,String teacherId);
	void projectApplication(StudentProject sp);
	void nextState(int year,int level);
	void nextState(int id);
	void failedPass(int year,int level);
	void failedKont(int year,int level);
	void updateExperts(int projectId,String teacherId1,String teacherId2,String teacherId3);
	boolean save(Requisition r);
}