package com.wq.DAO;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.wq.Requisition;
import com.wq.StudentProject;
import com.wq.projectMember;


@Repository
public class ProjectDAOImpl implements ProjectDAO{

	StudentDAOImpl sd = new StudentDAOImpl();
	@Resource private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public List<StudentProject> listProjectByLeading(String studentId) {
		String hql="from StudentProject where projectLeading = "+studentId; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	  
		return project;
	}

	@Override
	public List<StudentProject> listProjectByMember(String studentId) {
		String hql="from StudentProject where projectId = (select projectId from projectMember where projectMemberId='"+studentId+"')"; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    return project;
	}

	@Override
	public List<StudentProject> listProjectByDateAndLevel(int year,int level) {
		String hql="from StudentProject where projectDate = "+year +" and projectLevel="+level; 
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
	public void nextState(int year, int level) {
		this.currentSession().createQuery("update StudentProject set projectState = projectState+1 where projectDate = ? and projectLevel = ? and projectState != 0")
		.setParameter(0, year).setParameter(1, level)
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
	public void updateExperts(int projectId,String teacherId1,String teacherId2,String teacherId3) {
		this.currentSession().createQuery("update StudentProject set projectExpert1 = ? where projectId = ?")
		.setParameter(0,teacherId1)
		.setParameter(1,projectId)
		.executeUpdate();
		
		this.currentSession().createQuery("update StudentProject set projectExpert2 = ? where projectId = ?")
		.setParameter(0,teacherId2)
		.setParameter(1,projectId)
		.executeUpdate();
		
		this.currentSession().createQuery("update StudentProject set projectExpert3 = ? where projectId = ?")
		.setParameter(0,teacherId3)
		.setParameter(1,projectId)
		.executeUpdate();
		
		String expert1 = (String) this.currentSession().createQuery("select teacherName from Teacher where id = ?")
				.setParameter(0,teacherId1)
				.uniqueResult(); 

		String expert2 = (String) this.currentSession().createQuery("select teacherName from Teacher where id = ?")
				.setParameter(0,teacherId2)
				.uniqueResult();

		String expert3 = (String) this.currentSession().createQuery("select teacherName from Teacher where id = ?")
				.setParameter(0,teacherId3)
				.uniqueResult();
		this.currentSession().createQuery("update StudentProject set expertName = ?")
			.setParameter(0,expert1+" "+expert2+" "+expert3)
			.executeUpdate();
	}

	@Override
	public List<StudentProject> listProjectByExpert(String teacherId) {
		String hql="from StudentProject where projectExpert1 = "+teacherId + "or projectExpert2="+ teacherId+" or projectExpert3="+teacherId; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    return project;
	}

	@Override
	public void updateFirstGrade(int firstGrade, int projectId,String teacherId) {
		String hql="from StudentProject where projectId = "+projectId; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    StudentProject p = project.get(0);
		if(p.getFirstGrade1()==null){
			this.currentSession().createQuery("update StudentProject set firstGrade1 = ? where projectId = ?")
			.setParameter(0, firstGrade)
			.setParameter(1,projectId)
			.executeUpdate();
		}
		else if(p.getFirstGrade2()==null){
			this.currentSession().createQuery("update StudentProject set firstGrade2 = ? where projectId = ?")
			.setParameter(0, firstGrade)
			.setParameter(1,projectId)
			.executeUpdate();
		}
		else if(p.getFirstGrade3()==null){
			this.currentSession().createQuery("update StudentProject set firstGrade3 = ? where projectId = ?")
			.setParameter(0, firstGrade)
			.setParameter(1,projectId)
			.executeUpdate();
		}
		
		this.currentSession().createQuery("update StudentProject set firstTeacher =concat_ws(' ',firstTeacher,?) where projectId = ?")
		.setParameter(0, teacherId)
		.setParameter(1,projectId)
		.executeUpdate();
	}

	@Override
	public void updateSecondGrade(int secondGrade, int projectId,String teacherId) {
		String hql="from StudentProject where projectId = "+projectId; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    StudentProject p = project.get(0);
	    if(p.getSecondGrade1()==null){
			this.currentSession().createQuery("update StudentProject set secondGrade1 = ? where projectId = ?")
			.setParameter(0, secondGrade)
			.setParameter(1,projectId)
			.executeUpdate();
	    }else if(p.getSecondGrade2()==null){
			this.currentSession().createQuery("update StudentProject set secondGrade2 = ? where projectId = ?")
			.setParameter(0, secondGrade)
			.setParameter(1,projectId)
			.executeUpdate();
	    }else if(p.getSecondGrade3()==null){
			this.currentSession().createQuery("update StudentProject set secondGrade3 = ? where projectId = ?")
			.setParameter(0, secondGrade)
			.setParameter(1,projectId)
			.executeUpdate();
	    }
	    
	    this.currentSession().createQuery("update StudentProject set secondTeacher =concat_ws(' ',secondTeacher,?) where projectId = ?")
		.setParameter(0, teacherId)
		.setParameter(1,projectId)
		.executeUpdate();
	}

	@Override
	public StudentProject getProjectById(int projectId) {
		String hql="from StudentProject where projectId = "+projectId; 
		@SuppressWarnings("unchecked")
		List<StudentProject> project = (List<StudentProject>)this.currentSession().createQuery(hql).list();
	    return project.get(0);
	}

	@Override
	public void failedKont(int id) {
		this.currentSession().createQuery("update StudentProject set projectState = -1 where projectId = ?")
		.setParameter(0, id)
		.executeUpdate();
	}

	@Override
	public boolean save(Requisition r) {
		@SuppressWarnings("unchecked")
		ArrayList<Requisition> r1 = (ArrayList<Requisition>)this.currentSession().createQuery("from Requisition where leadingNum=? and projectDate=? and projectLevel=?")
						.setParameter(0,r.getLeadingNum()).setParameter(1,r.getProjectDate()).setParameter(2,r.getProjectLevel())
						.list(); 
		if(r1.size()==0){
			System.out.println("save");
			this.currentSession().save(r);
			System.out.println("save success");
			return true;
		}else{
			System.out.println("not save");
			return false;
		}
	}

	@Override
	public int getIdByNameAndLeadingAndDateAndLevel(String name, String leading, Integer Date, Integer Level) {
		int id = (int) this.currentSession().createQuery("select projectId from Requisition where projectName = ? and leadingNum=? and projectDate=? and projectLevel=?")
		.setParameter(0,name).setParameter(1,leading).setParameter(2,Date).setParameter(3, Level)
		.uniqueResult(); 
		return id;
	}

	@Override
	public void save(projectMember pm) {
		this.currentSession().save(pm);
	}

	@Override
	public void save(StudentProject sp) {
		this.currentSession().save(sp);
	}


}
