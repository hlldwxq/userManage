package com.wq.DAO;

import java.util.List;
import com.wq.StudentProject;

public interface ProjectDAO {
	List<StudentProject> listProjectByLeading(Integer studentId);
	List<StudentProject> listProjectByMember(Integer studentId);
	List<StudentProject> listProjectByTeacher(String teacherId);
	List<StudentProject> listProjectByExpert(String teacherId);
	List<StudentProject> listProjectByDateAndLevel(int year,int level);
	List<StudentProject> listProjectByStatus(int status);
	List<StudentProject> listAllProject();
	StudentProject getProjectById(int projectId);
	void updateFirstGrade(int firstGrade,int projectId);
	void updateSecondGrade(int secondGrade,int projectId);
	void updateExpert(int projectId,String teacherId);
	void projectApplication(StudentProject sp);
	void nextState(int id);
	void nextState(int year,int level);
	void failedPass(int id);
}
