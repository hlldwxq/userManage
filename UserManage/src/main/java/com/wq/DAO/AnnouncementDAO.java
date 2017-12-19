package com.wq.DAO;

import java.util.List;

import com.wq.Announcement;

public interface AnnouncementDAO {
	List<Announcement> listAllAnnouncement();
	void save(Announcement announcement);
	boolean deleteById(int id);
}