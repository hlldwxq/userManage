package com.wq.Service;

import java.util.List;
import com.wq.ProjectBatch;

public interface BatchService {
	List<ProjectBatch> listAllBatch();
	void save(ProjectBatch batch);
	ProjectBatch appliactionAllowed();
	void nextState(int year,int type);
}
