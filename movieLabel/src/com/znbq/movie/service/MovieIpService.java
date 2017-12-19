package com.znbq.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.movie.dao.MovieIpDAO;
import com.znbq.movie.entity.MovieIp;

@Transactional
@Service
public class MovieIpService {

	@Autowired
	public MovieIpDAO movieIpDAO;
	
	/*添加一条数据*/
	public void addMovieIp(MovieIp movieIp) {
		movieIpDAO.addMovieIp(movieIp);
	}
	
	/*通过id寻找数据*/
	public MovieIp getMovieIpById(String id){
		return movieIpDAO.getMovieIpById(id);
	}
	
	/*更新一条数据*/
	public void updateMovieIp(MovieIp movieIp) {
		movieIpDAO.updateMovieIp(movieIp);
	}
	/*
	public void deleteMovieIpById(String  id) {
		movieIpDAO.deleteMovieIpById(id);
	}
	*/
	/*获取所有数据*/
	public List<MovieIp> getMovieIp() {
		return movieIpDAO.getMovieIp();
	}

}
