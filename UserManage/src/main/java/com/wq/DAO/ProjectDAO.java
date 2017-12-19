package com.wq.DAO;

import java.util.List;

import com.wq.Requisition;
import com.wq.StudentProject;
import com.wq.projectMember;

public interface ProjectDAO {
	
	List<StudentProject> listProjectByLeading(String studentId);
	List<StudentProject> listProjectByMember(String studentId);
	List<StudentProject> listProjectByTeacher(String teacherId);
	List<StudentProject> listProjectByExpert(String teacherId);
	List<StudentProject> listProjectByDateAndLevel(int year,int level);
	List<StudentProject> listProjectByStatus(int status);
	List<StudentProject> listAllProject();
	StudentProject getProjectById(int projectId);
	void updateFirstGrade(int firstGrade,int projectId,String teacherId);
	void updateSecondGrade(int secondGrade,int projectId,String teacherId);
	void updateExperts(int projectId,String teacherId1,String teacherId2,String teacherId3);
	void projectApplication(StudentProject sp);
	void nextState(int id);
	void nextState(int year,int level);
	void failedPass(int id);
	void failedKont(int id);
	boolean save(Requisition r);
	void save(projectMember pm);
	void save(StudentProject sp);
	int getIdByNameAndLeadingAndDateAndLevel(String name,String leading,Integer Date,Integer Level);
}
