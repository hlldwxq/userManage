package com.wq.DAO;

import java.util.List;
import com.wq.ProjectFile;

public interface ProjectFileDAO {
	List<ProjectFile> listByProjectid(int projectFileid);
	List<ProjectFile> listByProjectidAndType(int projectFileid,String type);
	void save(ProjectFile f);
}
