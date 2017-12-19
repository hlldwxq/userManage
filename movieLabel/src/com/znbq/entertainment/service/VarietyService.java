package com.znbq.entertainment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.znbq.entertainment.dao.*;
import com.znbq.entertainment.entity.*;


@Service
@Transactional
public class VarietyService {

	@Autowired public VarietyInfoDAO varietyInfoDao;
	
	public String themeRecommend(VarietyInfo vi){		//根据用户评论数返回节目名称
		VarietyInfo temp=varietyInfoDao.getVarietyByComment(vi.getComment());
		if(temp!=null  ){
			System.out.println("good");
			return temp.getName();
		}
		else {
			System.out.println("bad");
			return null;
		}
	}
	
}
	
