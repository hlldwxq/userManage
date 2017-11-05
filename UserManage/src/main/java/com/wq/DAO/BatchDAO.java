package com.wq.DAO;

import java.util.List;
import com.wq.ProjectBatch;

public interface BatchDAO {
	List<ProjectBatch> listAllBatch();
	void save(ProjectBatch batch);
	ProjectBatch appliactionAllowed();
	void updateState(int year,int level);
	ProjectBatch getBatchByYearAndLevel(int year,int level);
}
