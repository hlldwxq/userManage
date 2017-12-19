package com.wq.Service;

import java.util.List;

import com.wq.Announcement;

public interface AnnouncementService {
	List<Announcement> listAllAnnouncement();
	void save(Announcement announcement);
	boolean deleteById(int id);
}
