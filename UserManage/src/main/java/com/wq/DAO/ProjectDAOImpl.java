package com.wq.DAO;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.wq.StudentProject;


@Repository
public class ProjectDAOImpl implements ProjectDAO{

	@Resource private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public List<StudentProject> listProjectByLeading(Integer studentId) {
		String hql="from StudentProject where projectLeading = "+studentId; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    return project;
	}

	@Override
	public List<StudentProject> listProjectByMember(Integer studentId) {
		String hql="from StudentProject,project where project.projectId = (select projectmember.projectId where projectMemberId=studentId)"; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    return project;
	}

	@Override
	public List<StudentProject> listProjectByDateAndType(int year,int type) {
		String hql="from StudentProject where projectDate = "+year +" and projectType="+type; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    return project;
	}

	@Override
	public List<StudentProject> listProjectByStatus(int status) {
		if(status==0){
			return listAllProject();
		}
		String hql="from StudentProject where projectState = "+status; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    return project;
	}

	@Override
	public List<StudentProject> listProjectByTeacher(String teacherId) {
		String hql="from StudentProject where projectTeacher = '"+teacherId+"'"; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    return project;
	}

	@Override
	public void projectApplication(StudentProject sp) {
		this.currentSession().save(sp);
	}

	@Override
	public void nextState(int year, int type) {
		this.currentSession().createQuery("update StudentProject set projectState = projectState+1 where projectDate = ? and projectType = ? and projectState != 0")
		.setParameter(0, year).setParameter(1, type)
		.executeUpdate();
	}

	@Override
	public List<StudentProject> listAllProject() {
		@SuppressWarnings("unchecked")
		List<StudentProject> pl = (List<StudentProject>)this.currentSession().createCriteria(StudentProject.class).list();
		return pl;
	}

	@Override
	public void nextState(int id) {
		this.currentSession().createQuery("update StudentProject set projectState = projectState+1 where projectId = ?")
		.setParameter(0, id)
		.executeUpdate();
	}

	@Override
	public void failedPass(int id) {
		this.currentSession().createQuery("update StudentProject set projectState = 0 where projectId = ?")
		.setParameter(0, id)
		.executeUpdate();
	}

	@Override
	public void updateExpert(int projectId, String teacherId) {
		this.currentSession().createQuery("update StudentProject set projectExpert = ? where projectId = ?")
		.setParameter(0,teacherId)
		.setParameter(1,projectId)
		.executeUpdate();
	}

	@Override
	public List<StudentProject> listProjectByExpert(String teacherId) {
		String hql="from StudentProject where projectExpert = "+teacherId; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    return project;
	}

	@Override
	public void updateFirstGrade(int firstGrade, int projectId) {
		this.currentSession().createQuery("update StudentProject set firstGrade = ? where projectId = ?")
		.setParameter(0, firstGrade)
		.setParameter(1,projectId)
		.executeUpdate();
	}

	@Override
	public void updateSecondGrade(int secondGrade, int projectId) {
		this.currentSession().createQuery("update StudentProject set secondGrade = ? where projectId = ?")
		.setParameter(0, secondGrade)
		.setParameter(1,projectId)
		.executeUpdate();
	}




}
