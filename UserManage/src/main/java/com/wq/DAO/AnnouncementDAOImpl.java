package com.wq.DAO;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.wq.Announcement;

@Repository
public class AnnouncementDAOImpl implements AnnouncementDAO{

	@Resource private SessionFactory sessionFactory;

	private Session currentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public List<Announcement> listAllAnnouncement() {
		@SuppressWarnings("unchecked")
		List<Announcement> announcement = (List<Announcement>)this.currentSession().createCriteria(Announcement.class).list();
		return announcement;
	}

	@Override
	public void save(Announcement announcement) {
		this.currentSession().save(announcement);
	}

	@Override
	public boolean deleteById(int id) {
		try{
			currentSession().createQuery("delete Announcement where id = ? ")
		    .setParameter(0,id).executeUpdate();
		}
		catch(Exception e){
			return false;
		}
		return true;
	}
	
}
