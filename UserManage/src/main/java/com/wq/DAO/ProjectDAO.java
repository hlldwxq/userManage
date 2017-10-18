package com.wq.DAO;

import java.util.List;
import com.wq.StudentProject;

public interface ProjectDAO {
	List<StudentProject> listProjectByLeading(Integer studentId);
	List<StudentProject> listProjectByMember(Integer studentId);
	List<StudentProject> listProjectByTeacher(String teacherId);
	List<StudentProject> listProjectByExpert(String teacherId);
	List<StudentProject> listProjectByDateAndType(int year,int type);
	List<StudentProject> listProjectByStatus(int status);
	List<StudentProject> listAllProject();
	void updateFirstGrade(int firstGrade,int projectId);
	void updateSecondGrade(int secondGrade,int projectId);
	void updateExpert(int projectId,String teacherId);
	void projectApplication(StudentProject sp);
	void nextState(int id);
	void nextState(int year,int type);
	void failedPass(int id);
}
