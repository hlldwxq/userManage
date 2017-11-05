package com.wq.Service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.wq.ProjectFile;
import com.wq.DAO.ProjectFileDAO;

@Service
public class ProjectFileServiceImpl implements ProjectFileService{

	@Resource private ProjectFileDAO projectFileList;
	
	@Override
	public List<ProjectFile> listByProjectid(int projectFileid) {
		return projectFileList.listByProjectid(projectFileid);
	}

	@Override
	public List<ProjectFile> listByProjectidAndType(int projectFileid, String type) {
		return projectFileList.listByProjectidAndType(projectFileid, type);
	}

	@Override
	public void save(ProjectFile f) {
		projectFileList.save(f);
	}
	
}
