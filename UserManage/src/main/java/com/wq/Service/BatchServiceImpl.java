package com.wq.Service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.wq.ProjectBatch;
import com.wq.DAO.BatchDAO;

@Service
public class BatchServiceImpl implements BatchService{
	@Resource private BatchDAO batchList;
	
	@Override
	public List<ProjectBatch> listAllBatch() {
		return batchList.listAllBatch();
	}

	@Override
	public void save(ProjectBatch batch) {
		System.out.println("service");
		System.out.println(batch.getYear());
		System.out.println(batch.getState());
		System.out.println(batch.getLevel());
		batchList.save(batch);
		
	}

	@Override
	public ProjectBatch appliactionAllowed() {
		return batchList.appliactionAllowed();
	}

	@Override
	public void nextState(int year, int type) {
		batchList.updateState(year, type);
	}

}
