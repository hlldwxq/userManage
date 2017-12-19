/**
 * 
 */
package com.znbq.news.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.news.dao.AreaFeatureDAO;
import com.znbq.news.dao.AreaSearchMarkDAO;
import com.znbq.news.dao.NewsLabelCollectionDAO;
import com.znbq.news.entity.AreaFeatures;
import com.znbq.news.entity.AreaSearchMark;
import com.znbq.news.entity.NewsLabelCollection;

/**
 * @author luyufan
 *
 */
@Service
@Transactional
public class NewsLabelCollectionService {
	@Autowired public NewsLabelCollectionDAO newslabelDAO;
	/**
	 * this function is used to get NewsLabelCollection data by calling the function of NewsLabelCollectionDAO
	 * @param year
	 * @param month
	 * @param day
	 * @return NewsLabelCollection
	 */
	public NewsLabelCollection getNewsLabelCollection(String year,String month,String day){
		return newslabelDAO.getNewsLabelCollection(year, month, day);
	}
}
