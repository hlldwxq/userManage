/**
 * 
 */
package com.znbq.news.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.news.dao.AreaFeatureDAO;
import com.znbq.news.entity.AreaFeatures;

/**
 * @author luyufan
 *
 */
@Service
@Transactional
public class AreaFeatureService {
	@Autowired public AreaFeatureDAO areaFeatueDAO;
	
	/**
	 * this function is used to get AreaFeatures data by calling the function of AreaFeatureDAO
	 * @param year
	 * @param month
	 * @param day
	 * @return AreaFeatures
	 */
	public AreaFeatures getAreaFeatures(String year,String month,String day){
		return areaFeatueDAO.getAreaFeaturesData(year, month, day);
	}
}
