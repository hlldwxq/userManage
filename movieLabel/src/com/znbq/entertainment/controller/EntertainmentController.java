package com.znbq.entertainment.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.znbq.entertainment.entity.VarietyInfo;
import com.znbq.entertainment.service.*;
@Controller
@RequestMapping(value={"/entertainment"})

public class EntertainmentController {
	@Autowired public VarietyService varietyService;
	
	@RequestMapping("/variety")
	public String entertainmentMain(){				//返回娱乐首页
		return "entertainment/variety";
	}
	
	@RequestMapping("/guest_theme_recommend")
	public String entertainmentGuestTheme(HttpServletRequest request,HttpServletResponse response){ 	//处理“换一组试试”，更换列表项中第一条记录，并返回
		VarietyInfo vi = new VarietyInfo();
		vi.setComment(Integer.parseInt(request.getParameter("comment")));
		if(vi.getComment()!=0){	 
			System.out.println(vi.getComment());
			request.getSession().setAttribute("name", varietyService.themeRecommend(vi));
			
			return "entertainment/guest_theme_recommend";
		}
		else {
			request.getSession().removeAttribute("name");
			return "entertainment/guest_theme_recommend";
		}
		
		
	}
	
	@RequestMapping("/program_schedule_arrangement")
	public String entertainmentScheduleArrange(){			//返回节目档期安排
		return "entertainment/program_schedule_arrangement";
	}
	
	@RequestMapping("/content_arrangement")
	public String entertainmentContentArrange(){			//返回节目内容安排
		return "entertainment/content_arrangement";
	}
	
	@RequestMapping("/user_data")
	public String entertainmentUserData(){					//返回用户信息参考
		return "entertainment/user_data";
	}
	
	@RequestMapping("/advertiser_recommend")
	public String entertainmentAdRecommend(){
		return "entertainment/advertiser_recommend";
	}
	@RequestMapping("/advertiser_recommend_result")			//返回广告商选择
	public String entertainmentAdRecommendResult(){
		return "entertainment/advertiser_recommend_result";
	}

	@RequestMapping("/variety_show_2_change")
	public String varietyShow2(){
		return "entertainment/variety_show_2_change";
	}
//	@RequestMapping("/variety_show_3_change")
//	public String varietyShow3(){
//		return "entertainment/variety_show_3_change";
//	}
	@RequestMapping("/variety_show_4_change")
	public String varietyShow4(){
		return "entertainment/variety_show_4_change";
	}
	
	
}
