package com.wq.Service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wq.StudentProject;
import com.wq.DAO.ProjectDAO;

@Service
public class ProjectServiceImpl implements ProjectService{
	@Resource private ProjectDAO projectList;
	@Override
	public List<StudentProject> listProjectByStudent(Integer studentId) {

		List<StudentProject> l = projectList.listProjectByLeading(studentId);
		//l.addAll(projectList.listProjectByMember(studentId));
		return l;
	}

	@Override
	public List<StudentProject> listProjectByTeacher(String teacherId) {
		return projectList.listProjectByTeacher(teacherId);
	}

	@Override
	public List<StudentProject> listProjectByDateAndType(int year,int type) {
		return projectList.listProjectByDateAndType(year,type);
	}

	@Override
	public List<StudentProject> listProjectByStatus(int status) {
		return projectList.listProjectByStatus(status);
	}

	@Override
	public void projectApplication(StudentProject sp) {
		projectList.projectApplication(sp);
		
	}

	@Override
	public void nextState(int year, int type) {
		projectList.nextState(year, type);
	}

	@Override
	public void nextState(int id) {
		projectList.nextState(id);
	}

	@Override
	public void failedPass(int year, int type) {
		List<StudentProject> sp = projectList.listProjectByDateAndType(year, type);
		for(StudentProject project:sp){
			if(project.getProjectState()==1){
			    projectList.failedPass(project.getProjectId());
			}
		}
	}

	@Override
	public void updateExpert(int projectId, String teacherId) {
		projectList.updateExpert(projectId, teacherId);
	}

	@Override
	public List<StudentProject> listProjectByExpert(String teacherId) {
		return projectList.listProjectByExpert(teacherId);
	}

	@Override
	public void updateFirstGrade(int firstGrade, int projectId) {
		projectList.updateFirstGrade(firstGrade, projectId);
	}

	@Override
	public void updateSecondGrade(int secondGrade, int projectId) {
		projectList.updateSecondGrade(secondGrade, projectId);
	}

	

	

}
