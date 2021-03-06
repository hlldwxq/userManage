package com.wq.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.wq.Student;
import com.wq.projectMember;

import javax.annotation.Resource;

@Repository
public class StudentDAOImpl implements StudentDAO{	
	
	
	@Resource private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public Student getByIdAndPassword(Student s) {
		Student student = (Student)this.currentSession().createQuery("from Student where id = ? and studentpassword = ?")
					    .setParameter(0,s.getId()).setParameter(1,s.getstudentpassword()).uniqueResult();
		return student;
	}

	@Override
	public Student getById(String id) {
		return (Student)this.currentSession().createQuery("from Student where id = ?")
		           .setParameter(0, id).uniqueResult();

	}

	@Override
	public void deleteById(String id) {
		currentSession().createQuery("delete Student where id = ? ")
		    .setParameter(0,id).executeUpdate();
	}
	
	@Override
	public void save(Student u) {
		this.currentSession().save(u);
	}
	
	@Override
	public Student getByName(String name) {
		return (Student)this.currentSession().createQuery("from Student where Studentname = ?")
			       .setParameter(0, name).uniqueResult();
	}



}
