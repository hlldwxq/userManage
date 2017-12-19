/**
 * 
 */
package com.znbq.news.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.news.dao.AudienceSentimentDAO;
import com.znbq.news.entity.AudienceSentiment;

/**
 * @author luyufan
 *
 */
@Service
@Transactional
public class AudienceSentimentService {
	@Autowired public AudienceSentimentDAO sentimentDAO;
	
	/**
	 * this function is used to get AudienceSentiment data by calling the function of AudienceSentimentDAO
	 * @param year
	 * @param month
	 * @param day
	 * @return AudienceSentiment
	 */
	public AudienceSentiment getSentimentAndAgePieData(String year,String month,String day){
		return sentimentDAO.getAudienceSentiment(year, month, day);
	}
}
