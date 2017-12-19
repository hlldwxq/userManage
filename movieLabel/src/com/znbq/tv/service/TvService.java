package com.znbq.tv.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.znbq.tv.dao.TvDao;
import com.znbq.tv.entity.*;

@Service
@Transactional
public class TvService {

	@Autowired public TvDao tvDao;
	
	/**
	 * 投资决策处理
	 * @param input 输入条件
	 * @param output 输出结果
	 */
	public void investmentDeal(InvestmentInput input,List<TvPlayStatistic> output)
	{
		List<TvPlayBrief> list=tvDao.getTvPlayBriefByType(input.getType());
		if(list!=null)
		{
			for(int i=0;i<list.size();i++)
			{
				output.add(tvDao.getTvPlayStatisticByName(list.get(i).getTvName()));
			}
		}
		
		
	}
	
	/**
	 * 主创推荐
	 * @param input 输入条件
	 * @return result 返回展示结果
	 */
	public CreatorResult creatorDeal(CreatorInput input)
	{
		List<TvPlayBrief> list=tvDao.getTvPlayBriefByType(input.getTopic());
		if(list!=null)
		{
			//temp*********//
			CreatorResult result = new CreatorResult();
			TvPlayBasic suggest=tvDao.getTvPlayBasicByName(list.get(0).getTvName());
			if(suggest!=null)
			{
				System.out.println(suggest.getId());
				result.setDirector(suggest.getMasterDirector()+' '+suggest.getExecutiveDirector());
				result.setStarring(suggest.getStarring()+' '+suggest.getCoStarring());
				result.setTeam(suggest.getAssistantDirector());
				result.setEffectCompany(suggest.getEffectCompany());
				return result;
			}
		}
		return null;
	}
	
	/**
	 * 预告拍摄处理过程
	 * @param input 筛选条件
	 * @return 输出结果
	 */
	public TrailerResult trailerDeal(TrailerInput input)
	{
		List<TvPlayBrief> list=tvDao.getTvPlayBriefByType(input.getType());
		TrailerResult suggest=new TrailerResult();
		if(list!=null)
		{
			suggest.setSimilarTvName(list.get(0).getTvName());
			suggest.setDirector(input.getDirector());
			suggest.setTopic(input.getType());//**
			suggest.setProducer("暂无");
			suggest.setStarring(input.getActor());
			suggest.setFans(input.getActor());
			suggest.setSimilarTvType(list.get(0).getType());
			suggest.setReferTvName(list.get(0).getTvName());
			suggest.setEmotionAnalysis(list.get(0).getTvName());
			String[] launch={"暂无","暂无","暂无"};
			suggest.setSuggest(launch);
			return suggest;
		}
		return null;
	}
	
	@SuppressWarnings("rawtypes")
	public void recommendDeal(Map recommendBox)
	{
		
	}
	
}
