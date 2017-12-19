package com.wq.Service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wq.Requisition;
import com.wq.StudentProject;
import com.wq.projectMember;
import com.wq.DAO.ProjectDAO;

@Service
public class ProjectServiceImpl implements ProjectService{
	@Resource private ProjectDAO projectList;
	@Override
	public List<StudentProject> listProjectByStudent(String studentId) {

		List<StudentProject> l = projectList.listProjectByLeading(studentId);
		l.addAll(projectList.listProjectByMember(studentId));
		return l;
	}

	@Override
	public List<StudentProject> listProjectByTeacher(String teacherId) {
		return projectList.listProjectByTeacher(teacherId);
	}

	@Override
	public List<StudentProject> listProjectByDateAndLevel(int year,int level) {
		return projectList.listProjectByDateAndLevel(year,level);
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
	public void nextState(int year, int level) {
		projectList.nextState(year, level);
	}

	@Override
	public void nextState(int id) {
		projectList.nextState(id);
	}

	@Override
	public void failedPass(int year, int level) {
		List<StudentProject> sp = projectList.listProjectByDateAndLevel(year, level);
		for(StudentProject project:sp){
			if(project.getProjectState()==1){
			    projectList.failedPass(project.getProjectId());
			}
		}
	}

	@Override
	public void updateExperts(int projectId,String teacherId1,String teacherId2,String teacherId3) {
		projectList.updateExperts(projectId, teacherId1,teacherId2,teacherId3);
	}
	
	@Override
	public List<StudentProject> listProjectByExpert(String teacherId) {
		return projectList.listProjectByExpert(teacherId);
	}

	@Override
	public void updateFirstGrade(int firstGrade, int projectId,String teacherId) {
		projectList.updateFirstGrade(firstGrade, projectId,teacherId);
	}

	@Override
	public void updateSecondGrade(int secondGrade, int projectId,String teacherId) {
		projectList.updateSecondGrade(secondGrade, projectId,teacherId);
	}

	@Override
	public StudentProject getProjectById(int projectId) {
		return projectList.getProjectById(projectId);
	}

	@Override
	public void failedKont(int year, int level) {
		List<StudentProject> sp = projectList.listProjectByDateAndLevel(year, level);
		for(StudentProject project:sp){
			if(project.getProjectState()==4){
			    projectList.failedKont(project.getProjectId());
			}
		}
	}

	@Override
	public boolean save(Requisition r) {
		boolean b = projectList.save(r);
		if(b){
			int id = projectList.getIdByNameAndLeadingAndDateAndLevel(r.getProjectName(), r.getLeadingNum(), r.getProjectDate(), r.getProjectLevel());
			System.out.println("id="+id);
			if(r.getGrade1()!=""){
				System.out.println("pm1");
				projectMember pm1 = new projectMember(id,r.getStudentNum1());
				projectList.save(pm1);
			}
			if(r.getGrade2()!=""){
				System.out.println("pm2");
				projectMember pm2 = new projectMember(id,r.getStudentNum2());
				projectList.save(pm2);
			}
			if(r.getGrade3()!=""){
				System.out.println("pm3");
				projectMember pm3 = new projectMember(id,r.getStudentNum3());
				projectList.save(pm3);
			}
			if(r.getGrade4()!=""){
				System.out.println("pm4");
				projectMember pm4 = new projectMember(id,r.getStudentNum4());
				projectList.save(pm4);
			}
			StudentProject sp = new StudentProject();
			sp.setLeadingName(r.getLeadingName());
			sp.setProjectLeading(r.getLeadingNum());
			sp.setProjectDate(r.getProjectDate());
			sp.setProjectId(id);
			sp.setProjectLevel(r.getProjectLevel());
			sp.setTeacherName(r.getTeacherName());
			sp.setProjectTeacher(r.getTeacherNum());
			sp.setProjectState(1);
			sp.setProjectName(r.getProjectName());
			sp.setProjectType(r.getProjectType());
			projectList.save(sp);
			System.out.println("saveProject success");
		}
		return b;
	}

}
