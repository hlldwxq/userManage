package com.znbq.index.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.znbq.index.entity.LoginForm;
import com.znbq.index.service.*;
@Controller
@RequestMapping(value={"/",""})
public class IndexController {
	/*
	 * 首页
	 * */
	@Autowired public IndexService indexService;
	@RequestMapping(value={"","index"})
	public String index()
	{
		return "main/index";
	}
	@RequestMapping(value="/login")
	public String loginPage(HttpServletRequest request,
            HttpServletResponse response,LoginForm loginUser)
	{
		//不为空 才查询数据库匹配是否存在或能够登陆
		if(loginUser.getUsername()!=null&&loginUser.getPassword()!=null&&indexService.validLogin(loginUser))
		{
			System.out.print(loginUser.getUsername());
			System.out.print(loginUser.getId());
			request.getSession().setAttribute("username",loginUser.getUsername());
			return "redirect:index";
		}
		else
		{
			request.getSession().removeAttribute("username");
			return "main/login";
		}
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request,
            HttpServletResponse response)
	{
		request.getSession().removeAttribute("username");
		return "main/login";
	}
}
