package com.znbq.news.controller;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.znbq.news.entity.AreaFeatures;
import com.znbq.news.entity.AreaSearchMark;
import com.znbq.news.entity.NewsAreaFeatureEnsureBTN;
import com.znbq.news.entity.NewsHotTopicEnsureBTN;
import com.znbq.news.entity.NewsLabelCollection;
import com.znbq.news.service.AreaFeatureService;
import com.znbq.news.service.AreaSearchMarkService;
import com.znbq.news.service.AudienceRatingService;
import com.znbq.news.service.AudienceSentimentService;
import com.znbq.news.service.NewsHotTopicService;
import com.znbq.news.service.NewsLabelCollectionService;


@Controller
@RequestMapping(value="/news")
public class NewsContoller {
	
	@Autowired public AreaFeatureService areaFeatureService;
	@Autowired public AreaSearchMarkService areaSearchMarkService;
	@Autowired public NewsLabelCollectionService newslabelService;
	@RequestMapping(value="/news_arrange")
	
	/**
	 * this function handles the request of '/news_arrange' and get data from db and return the view
	 * @param request
	 * @param response
	 * @param param
	 * @param model
	 * @return String
	 */
	public String newsArrange(HttpServletRequest request,
            HttpServletResponse response,NewsAreaFeatureEnsureBTN param,Model model)
	{
		
		//判断并生成时间戳
		makedateStamp(param);

		AreaFeatures _areaFeatures=areaFeatureService.getAreaFeatures(param.getYears(), param.getMonths(), param.getDays());
		AreaSearchMark _areasearchmark=areaSearchMarkService.getAreaFeatures(param.getYears(), param.getMonths(), param.getDays());
		NewsLabelCollection _newslabelcollection=newslabelService.getNewsLabelCollection(param.getYears(), param.getMonths(), param.getDays());

		model.addAttribute("areaPie", _areaFeatures);
		model.addAttribute("areaMap", _areasearchmark);
		model.addAttribute("labelCollection",_newslabelcollection);
		model.addAttribute("dateStamp",param);
		
		return "news/news_arrange";
		
	}
	
	@Autowired AudienceRatingService audienceService;
	@RequestMapping("/news_analysis")
	/**
	 * this function handles the request of '/news_analysis' and get data from db and return the view
	 * @param request
	 * @param response
	 * @param param
	 * @param model
	 * @return
	 */
	public String newsAnalysis(HttpServletRequest request,
            HttpServletResponse response,NewsAreaFeatureEnsureBTN param,Model model)
	{
		//判断并生成时间戳
		makedateStamp(param);
		
		audienceService.getAudienceRatingDataAll(param.getYears(), param.getMonths(), param.getDays());
		
		model.addAttribute("rawTVnamesStr", audienceService.makeTVNamesStr());
		model.addAttribute("rawCitynamesStr", audienceService.makeCityNamesStr());
		model.addAttribute("rawRateDataStr", audienceService.makeRateData());
		model.addAttribute("dateStamp", param);
				
		return "news/news_analysis";
	}
	
	//TODO this part is to be completed as pages are prepared!
	@RequestMapping("/news_feature")
	/**
	 * @TODO this function is waited to handle the request of '/news_feature' 
	 * @return
	 */
	public String newsFeature()
	{
		return "news/news_feature";
	}
	
	@Autowired public NewsHotTopicService topicService;
	@RequestMapping("/news_hotTopicSelect")
	/**
	 * * this function handles the request of '/news_hotTopicSelect' and get data from db and return the view
	 * @param request
	 * @param response
	 * @param param
	 * @param model
	 * @return
	 */
	public String newsHotTopicSelect(HttpServletRequest request,
            HttpServletResponse response,NewsHotTopicEnsureBTN param,Model model)
	{
		if(param.getBefore_year()==null){
			defaultAndErrorDate(param, model);
			return "news/news_hotTopicSelect";
		}
		
		int b_y=new Integer(param.getBefore_year());
		int n_y=new Integer(param.getNext_year());
		int b_m=new Integer(param.getBefore_month());
		int n_m=new Integer(param.getNext_month());
		
		if(b_y>n_y||(b_y==n_y&&b_m>n_m)){
			defaultAndErrorDate(param, model);
			return "news/news_hotTopicSelect";
		}
		else{
			topicService.getAudienceRatingDataAll(param.getBefore_year(),param.getBefore_month(), param.getNext_year(),param.getNext_month());
			model.addAttribute("dateStamp", param);
			model.addAttribute("rawTopicStr",topicService.makeTopicStr());
			model.addAttribute("rawLabelStr",topicService.makeLabelStr());
			model.addAttribute("rawLabelDataStr",topicService.makeTopicAndLabelDataStr());
			
			return "news/news_hotTopicSelect";
		}
	}
	
	@Autowired AudienceSentimentService sentimentService;
	@RequestMapping("/news_usercondition")
	/**
	 * this function handles the request of '/news_usercondition' and get data from db and return the view
	 * @param request
	 * @param response
	 * @param param
	 * @param model
	 * @return
	 */
	public String newsUsercondition(HttpServletRequest request,
            HttpServletResponse response,NewsAreaFeatureEnsureBTN param,Model model)
	{
		//判断并生成时间戳
		makedateStamp(param);
		model.addAttribute("sentiment", sentimentService.getSentimentAndAgePieData(param.getYears(), param.getMonths(),param.getDays()));
		model.addAttribute("dateStamp", param);
		return "news/news_usercondition";
	}
	
	/**
	 * this function makes a timeStamp for the view
	 * @param param
	 */
	private void makedateStamp(NewsAreaFeatureEnsureBTN param){
		//生成时间戳
		if(param.getYears()==null){
			Calendar now = Calendar.getInstance();
			Integer _y=now.get(Calendar.YEAR);
			Integer _m=now.get(Calendar.MONTH)+1;
			Integer _d=now.get(Calendar.DAY_OF_MONTH);
			param.setYears(_y.toString());
			param.setMonths(_m.toString());
			param.setDays(_d.toString());
		}
	}
	
	/**
	 * this function checks the data information from form or generates the correct data information if necessary
	 * @param param
	 * @param model
	 */
	private void defaultAndErrorDate(NewsHotTopicEnsureBTN param,Model model){
		Calendar now = Calendar.getInstance();
		Integer _y=now.get(Calendar.YEAR);
		Integer _m=now.get(Calendar.MONTH)+1;
		
		param.setBefore_year(_y.toString());
		param.setNext_year(_y.toString());
		param.setBefore_month(_m.toString());
		param.setNext_month(_m.toString());
		
		topicService.getAudienceRatingDataAll(param.getBefore_year(),param.getBefore_month(), param.getNext_year(),param.getNext_month());
		
		model.addAttribute("rawTopicStr",topicService.makeTopicStr());
		model.addAttribute("rawLabelStr",topicService.makeLabelStr());
		model.addAttribute("rawLabelDataStr",topicService.makeTopicAndLabelDataStr());
		model.addAttribute("dateStamp", param);
	
	}

}
