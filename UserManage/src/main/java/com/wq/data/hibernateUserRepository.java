package com.wq.data;

import com.wq.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import java.util.List;
import javax.annotation.Resource;

@Repository
public class hibernateUserRepository implements UserRepository{
	
	
	@Resource private SessionFactory sessionFactory;
		
	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public void save(User u) {
		currentSession().save(u);
	}

	@SuppressWarnings("unchecked")
	public List<User> getAll() {
		List<User> ul = (List<User>)this.currentSession().createCriteria(User.class).list();
		return ul;
	}

	public User findByName(String name) {
		return (User)this.currentSession().createQuery("from user where username = ?")
						 .setParameter(0, name).uniqueResult();
	}
	
	public User findById(Long id){
		return (User)this.currentSession().createQuery("from user where id = ?")
				         .setParameter(0, id).uniqueResult();

	}
	
	public boolean LoginRight(User u) {
		return true;

	}

	public boolean Registed(String name) {
		return false;	
	}

	public void deleteById(long id) {
		currentSession().createQuery("delete user where id = ? ")
		                .setParameter(0,id).executeUpdate();
	}

}
