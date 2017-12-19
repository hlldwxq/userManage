package com.znbq.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.movie.dao.StarringInfoDAO;
import com.znbq.movie.entity.StarringInfo;

@Transactional
@Service
public class StarringInfoService {

	@Autowired
	public StarringInfoDAO starringInfoDAO;
	
	/*添加一条数据*/
	public void addStarringInfo(StarringInfo starringInfo) {
		starringInfoDAO.addStarringInfo(starringInfo);
	}
	
	/*通过id寻找数据*/
	public StarringInfo getStarringInfoById(String id){
		return starringInfoDAO.getStarringInfoById(id);
	}
	
	/*更新一条数据*/
	public void updateStarringInfo(StarringInfo starringInfo) {
		starringInfoDAO.updateStarringInfo(starringInfo);
	}
	
	/*
	public void deleteStarringInfoById(String  id) {
		starringInfoDAO.deleteStarringInfoById(id);
	}
	*/
	
	/*获取所有数据*/
	public List<StarringInfo> getStarrings() {
		return starringInfoDAO.getStarrings();
	}
	
	//电影推荐系统-演员
	public StarringInfo[] recommendActors(){
		StarringInfo[] actors = new StarringInfo[6];	//演员列表
		List<StarringInfo> list = starringInfoDAO.getStarrings();	//获得所有数据
		for (int i = 0; i < actors.length; i++) {	//前六位演员
			actors[i] = list.get(i);	
		}
		return actors;
	}

}
