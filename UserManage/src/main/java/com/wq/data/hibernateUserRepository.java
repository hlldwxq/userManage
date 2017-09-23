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
		return (User)this.currentSession().createQuery("from User where username = ?")
						 .setParameter(0, name).uniqueResult();
	}
	
	public User findById(Integer id){
		return (User)this.currentSession().createQuery("from User where id = ?")
				         .setParameter(0, id).uniqueResult();

	}
	
	public boolean LoginRight(User u) {
		User user = (User)this.currentSession().createQuery("from User where username = ? and userpassword = ?")
					.setParameter(0,u.getUsername()).setParameter(1,u.getUserpassword()).uniqueResult();
		return user!=null;
	}

	public boolean Registed(String name) {
		User user = (User)this.currentSession().createQuery("from User where username = ?")
					.setParameter(0,name).uniqueResult();
		return user!=null;
	}

	public void deleteById(Integer id) {
		currentSession().createQuery("delete User where id = ? ")
		                .setParameter(0,id).executeUpdate();
	}

}
