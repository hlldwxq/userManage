package com.wq.Service;

import java.util.List;
import com.wq.StudentProject;

public interface ProjectService {
	List<StudentProject> listProjectByStudent(Integer studentId);
	List<StudentProject> listProjectByTeacher(String teacherId);
	List<StudentProject> listProjectByDateAndLevel(int year,int level);
	List<StudentProject> listProjectByStatus(int status);
	List<StudentProject> listProjectByExpert(String teacherId);
	StudentProject getProjectById(int projectId);
	void updateFirstGrade(int firstGrade,int projectId);
	void updateSecondGrade(int secondGrade,int projectId);
	void projectApplication(StudentProject sp);
	void nextState(int year,int level);
	void nextState(int id);
	void failedPass(int year,int level);
	void updateExpert(int projectId,String teacherId);
	
}
