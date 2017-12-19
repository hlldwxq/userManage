package com.znbq.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.movie.dao.DirectorInfoDAO;
import com.znbq.movie.entity.DirectorInfo;

@Transactional
@Service
public class DirectorInfoService {

	@Autowired
	public DirectorInfoDAO directorInfoDAO;
	
	/*添加一条数据*/
	public void addDirectorInfo(DirectorInfo directorInfo) {
		directorInfoDAO.addDirectorInfo(directorInfo);
	}
	
	/*通过id寻找数据*/
	public DirectorInfo getDirectorInfoById(String id){
		return directorInfoDAO.getDirectorInfoById(id);
	}
	
	/*更新一条数据*/
	public void updateDirectorInfo(DirectorInfo directorInfo) {
		directorInfoDAO.updateDirectorInfo(directorInfo);
	}
	/*
	public void deleteDirectorInfoById(String  id) {
		directorInfoDAO.deleteDirectorInfoById(id);
	}
	*/
	/*获取所有数据*/
	public List<DirectorInfo> getDirectors() {
		return directorInfoDAO.getDirectors();
	}

}
