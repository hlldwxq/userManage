package com.wq.DAO;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.wq.ProjectFile;

@Repository
public class ProjectFileDAOImpl implements ProjectFileDAO{

	@Resource private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public List<ProjectFile> listByProjectid(int projectFileid) {
		String hql="from ProjectFile where projectId = "+projectFileid; 
		@SuppressWarnings("unchecked")
		List<ProjectFile> projectFile = (List<ProjectFile>)this.currentSession().createQuery(hql).list();
	    return projectFile;
	}

	@Override
	public List<ProjectFile> listByProjectidAndType(int projectid, String type) {
		String hql="from ProjectFile where projectId = "+projectid+" and type='"+type+"'"; 
		@SuppressWarnings("unchecked")
		List<ProjectFile> projectFile = (List<ProjectFile>)this.currentSession().createQuery(hql).list();
	    return projectFile;
	}

	@Override
	public void save(ProjectFile f) {
		this.currentSession().save(f);
	}

}
