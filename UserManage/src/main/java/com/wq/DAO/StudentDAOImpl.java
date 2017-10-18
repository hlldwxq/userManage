package com.wq.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.wq.Student;
import javax.annotation.Resource;

@Repository
public class StudentDAOImpl implements StudentDAO{	
	
	
	@Resource private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public Student getByNameAndPassword(Student s) {
		Student student = (Student)this.currentSession().createQuery("from Student where studentname = ? and studentpassword = ?")
					    .setParameter(0,s.getstudentname()).setParameter(1,s.getstudentpassword()).uniqueResult();
		return student;
	}

	@Override
	public Student getById(Integer id) {
		return (Student)this.currentSession().createQuery("from Student where id = ?")
		           .setParameter(0, id).uniqueResult();

	}

	@Override
	public void deleteById(Integer id) {
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
	
//	@Override
//	public List<Student> listAllStudent() {
//		@SuppressWarnings("unchecked")
//		List<Student> ul = (List<Student>)this.currentSession().createCriteria(Student.class).list();
//		return ul;
//
//	}
//
//	@Override
//	public List<Student> listAllStudentById(String id) {
//		String hql="from Student as Student where Student.id like '%"+id+"%'"; 
//		@SuppressWarnings("unchecked")
//		List<Student> Student = (List<Student>)this.currentSession().createQuery(hql).list();
//	    return Student;
//	}

//	@Override
//	public List<Student> listAllStudentByName(String name) {
//		String hql="from Student as Student where Student.Studentname like '%"+name+"%'"; 
//		@SuppressWarnings("unchecked")
//		List<Student> Student = (List<Student>)this.currentSession().createQuery(hql).list();
//		return Student;
//	}

}
