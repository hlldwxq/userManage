package com.wq.DAO;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.wq.ProjectBatch;

@Repository
public class BatchDAOImpl implements BatchDAO{

	@Resource private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public List<ProjectBatch> listAllBatch() {
		@SuppressWarnings("unchecked")
		List<ProjectBatch> ProjectBatch = (List<ProjectBatch>)this.currentSession().createCriteria(ProjectBatch.class).list();
		return ProjectBatch;
	}

	@Override
	public void save(ProjectBatch batch) {
		System.out.println("DAO");
		this.currentSession().save(batch);
		
	}

	@Override
	public ProjectBatch appliactionAllowed() {
		ProjectBatch batch = (ProjectBatch)this.currentSession().createQuery("from ProjectBatch where state = 1")
			    .uniqueResult();
		return batch;
	}

	@Override
	public void updateState(int year, int type) {
		this.currentSession().createQuery("update ProjectBatch set state = state+1 where year = ? and type = ?")
		.setParameter(0, year).setParameter(1, type)
		.executeUpdate();  
	}
	
}
