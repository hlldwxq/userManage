package com.znbq.movie.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.movie.dao.PlotBasicDAO;
import com.znbq.movie.entity.PlotBasic;

@Transactional
@Service
public class PlotBasicService {

	@Autowired public PlotBasicDAO plotDao;
	
	public PlotBasic getPlotById(String id)
	{
		return plotDao.getPlotById(id);
	}
	
	
	public List<PlotBasic> getAllPlot()
	{
		return plotDao.getAllPlot();
	}
	
	public List<PlotBasic> getPlotByPage(int page,int pageSize)
	{
		return plotDao.getPlotByPage(page, pageSize);
	}
	
	public void saveNewPlot(PlotBasic plot)
	{
		plotDao.addPlot(plot);
	}
	
	public void editPlot(PlotBasic plot)
	{
		plotDao.updatePlot(plot);
	}
	
	public String uploadTrueUrl(String servletRoot)
	{
		String cut[]=servletRoot.split("\\\\");
		String tomcatWeb=new String();
		for(int i=0;i<cut.length-1;i++)
		{
			tomcatWeb+=cut[i]+"\\";
		}
		String uploadTrue=tomcatWeb+"images\\";
		return uploadTrue;
	}
	
	public String uploadPicUrl(String fileName)
	{
		String piccut[]=fileName.split("\\.");
		if(piccut[piccut.length-1].equals("png")||piccut[piccut.length-1].equals("jpg")||piccut[piccut.length-1].equals("JPG")||piccut[piccut.length-1].equals("JPEG")||piccut[piccut.length-1].equals("jpeg")||piccut[piccut.length-1].equals("img"))
		{
			return UUID.randomUUID()+"."+piccut[piccut.length-1];	
		}
		else
			return null;
	}
	//搜索
	public List<PlotBasic> getPlotByKey(String key)
	{
		return plotDao.getPlotByKey(key);
	}
}
