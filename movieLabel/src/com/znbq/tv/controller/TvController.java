package com.znbq.tv.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.znbq.tv.entity.CreatorInput;
import com.znbq.tv.entity.InvestmentInput;
import com.znbq.tv.entity.InvestmentResult;
import com.znbq.tv.entity.TrailerInput;
import com.znbq.tv.entity.TvPlayStatistic;
import com.znbq.tv.service.TvService;

@Controller
@RequestMapping(value="/tv")
public class TvController {
	
	@Autowired public TvService tvService;
	@RequestMapping(value={"tv"})
	/**
	 * 主页控制器
	 * @return
	 */
	public String tvIndex()
	{
		return "tv/tv";
	}
	/**
	 * 推荐控制器
	 * @param model
	 * @return
	 */
	@RequestMapping("/recommend")
	public String tvRecommend(Model model)
	{
		return "tv/recommend";
	}
	
	/**
	 * 剧本筛选控制器
	 * @return
	 */
	@RequestMapping("/screen")
	public String tvScreen()
	{
		return "tv/screen";
	}
	
	/**
	 * 剧本筛选结果
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping("/screen-result")
	public String tvScreenResult(HttpServletRequest request,
            HttpServletResponse response,Model model)
	{
		return "tv/screen-result";
	}
	
	/**
	 * 投资推荐控制器
	 * @return
	 */
	@RequestMapping("/investment")
	public String tvInvestment()
	{
		return "tv/investment";
	}
	
	/**
	 * 投资推荐结果
	 * @param request
	 * @param response
	 * @param investInput 输入条件
	 * @param model 模板
	 * @return
	 */
	@RequestMapping("/invest-result")
	public String tvInvestmentResult(HttpServletRequest request,
            HttpServletResponse response,InvestmentInput investInput,Model model)
	{
		if(investInput.checkEmpty())
		{	
			System.out.println(investInput.getMoviename());
			
			List<TvPlayStatistic> result=new ArrayList<TvPlayStatistic>();
			//处理事务
			tvService.investmentDeal(investInput,result);
			model.addAttribute("result", result);
			return "tv/invest-result";
		}
		else
		{
			return "redirect:investment";
		}
		
	}
	
	/**
	 * 主创推荐控制器
	 * @return
	 */
	@RequestMapping("/creator")
	public String tvCreator()
	{
		return "tv/creator";
	}
	
	/**
	 * 主创推荐结果
	 * @param request
	 * @param response
	 * @param creatorInput 输入筛选条件
	 * @param model
	 * @return
	 */
	@RequestMapping("/creator-result")
	public String tvCreatorResult(HttpServletRequest request,
            HttpServletResponse response,CreatorInput creatorInput,Model model)
	{
		
		if(creatorInput.checkEmpty())
		{
			System.out.println(creatorInput.getTopic());
			model.addAttribute("result", tvService.creatorDeal(creatorInput));
			return "tv/creator-result";
		}
		return "redirect:creator";
		
	}
	
	/**
	 * 主题推荐
	 * @param model
	 * @return
	 */
	@RequestMapping("/theme")
	public String tvTheme(Model model)
	{
		return "tv/theme";
	}
	
	/**
	 * 预告拍摄控制器
	 * @return
	 */
	@RequestMapping("/trailer")
	public String tvTrailer()
	{
		return "tv/trailer";
	}
	
	/**
	 * 预告拍摄结果
	 * @param request
	 * @param response
	 * @param trailerInput 筛选条件
	 * @param model 模板
	 * @return
	 */
	@RequestMapping("/trailer-result")
	public String tvTrailerResult(HttpServletRequest request,
            HttpServletResponse response,TrailerInput trailerInput,Model model)
	{
		if(trailerInput.checkEmpty())
		{
			System.out.println(trailerInput.getTvName());
			model.addAttribute("result", tvService.trailerDeal(trailerInput));
			return "tv/trailer_result";
		}
		return "redirect:trailer";
		
	}
}
