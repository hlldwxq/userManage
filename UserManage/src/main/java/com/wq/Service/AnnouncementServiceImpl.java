package com.wq.Service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wq.Announcement;
import com.wq.DAO.AnnouncementDAO;

@Service
public class AnnouncementServiceImpl implements AnnouncementService{

	@Resource private AnnouncementDAO announcementList;
	@Override
	public List<Announcement> listAllAnnouncement() {
		return announcementList.listAllAnnouncement();
	}

	@Override
	public void save(Announcement announcement) {
		announcementList.save(announcement);
	}

	@Override
	public boolean deleteById(int id) {
		return announcementList.deleteById(id);
	}

}
