package com.wq.Service;

import java.util.List;

import com.wq.ProjectFile;

public interface ProjectFileService {
	List<ProjectFile> listByProjectid(int projectFileid);
	List<ProjectFile> listByProjectidAndType(int projectFileid,String type);
	void save(ProjectFile f);
}
