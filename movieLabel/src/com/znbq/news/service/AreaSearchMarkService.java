/**
 * 
 */
package com.znbq.news.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.news.dao.AreaFeatureDAO;
import com.znbq.news.dao.AreaSearchMarkDAO;
import com.znbq.news.entity.AreaFeatures;
import com.znbq.news.entity.AreaSearchMark;

/**
 * @author luyufan
 *
 */
@Service
@Transactional
public class AreaSearchMarkService {
	@Autowired public AreaSearchMarkDAO areasearchDAO;
	
	/**
	 * this function is used to get AreaSearchMark data by calling the function of AreaSearchMarkDAO
	 * @param year
	 * @param month
	 * @param day
	 * @return AreaSearchMark
	 */
	public AreaSearchMark getAreaFeatures(String year,String month,String day){
		return areasearchDAO.getAreaSearchMark(year, month, day);
	}
}
