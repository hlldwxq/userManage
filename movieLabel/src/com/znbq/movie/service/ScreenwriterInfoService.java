package com.znbq.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.movie.dao.ScreenwriterInfoDAO;
import com.znbq.movie.entity.ScreenwriterInfo;

@Transactional
@Service
public class ScreenwriterInfoService {

	@Autowired
	public ScreenwriterInfoDAO screenwriterInfoDAO;
	
	/*添加一条数据*/
	public void addScreenwriterInfo(ScreenwriterInfo screenwriterInfo) {
		screenwriterInfoDAO.addScreenwriterInfo(screenwriterInfo);
	}
	
	/*通过id寻找数据*/
	public ScreenwriterInfo getScreenwriterInfoById(String id){
		return screenwriterInfoDAO.getScreenwriterInfoById(id);
	}
	
	/*更新一条数据*/
	public void updateScreenwriterInfo(ScreenwriterInfo screenwriterInfo) {
		screenwriterInfoDAO.updateScreenwriterInfo(screenwriterInfo);
	}
	/*
	public void deleteScreenwriterInfoById(String  id) {
		screenwriterInfoDAO.deleteScreenwriterInfoById(id);
	}
	*/
	/*获取所有数据*/
	public List<ScreenwriterInfo> getScreenwriters() {
		return screenwriterInfoDAO.getScreenwriters();
	}

}
