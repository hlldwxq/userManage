package com.wq.Service;

import java.util.List;
import com.wq.StudentProject;
import com.wq.Teacher;

public interface ProjectService {
	List<StudentProject> listProjectByStudent(Integer studentId);
	List<StudentProject> listProjectByTeacher(String teacherId);
	List<StudentProject> listProjectByDateAndType(int year,int type);
	List<StudentProject> listProjectByStatus(int status);
	List<StudentProject> listProjectByExpert(String teacherId);
	void updateFirstGrade(int firstGrade,int projectId);
	void updateSecondGrade(int secondGrade,int projectId);
	void projectApplication(StudentProject sp);
	void nextState(int year,int type);
	void nextState(int id);
	void failedPass(int year,int type);
	void updateExpert(int projectId,String teacherId);
	
}
