package com.wq.DAO;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.wq.Teacher;

@Repository
public class TeacherDAOImpl implements TeacherDAO{

	@Resource private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public Teacher getByIdAndPassword(Teacher t) {
		Teacher teacher = (Teacher)this.currentSession().createQuery("from Teacher where id = ? and password = ?")
			    .setParameter(0,t.getId()).setParameter(1,t.getPassword()).uniqueResult();
        return teacher;
	}

	@Override
	public List<Teacher> getExpert() {
		String hql="from Teacher as Teacher where Teacher.power=3"; 
		@SuppressWarnings("unchecked")
		List<Teacher> teacher = (List<Teacher>)this.currentSession().createQuery(hql).list();	    
		return teacher;
	}

	@Override
	public List<Teacher> getTeacherByCollege() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Teacher> getAllTeacher() {
		
		String hql="select new Teacher(id,teacherName) from Teacher"; 
		@SuppressWarnings("unchecked")
		List<Teacher> teacher = (List<Teacher>)this.currentSession().createQuery(hql).list();	    
		return teacher;
	}

}
