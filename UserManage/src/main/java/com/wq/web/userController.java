package com.wq.web;

import com.wq.User;
import com.wq.data.hibernateUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/user")
public class userController {
	@Autowired private hibernateUserRepository userList;
	private User user=null;  //表示当前有无用户在线，需改为session
	
	
	//访问用户的私人主页
	@RequestMapping(value="/index",method=RequestMethod.GET)  
	public String user(Model model) {
		if(user == null){
			//没有用户登录应该让其登录
			return "redirect:/user/login";
		}
		else{
			model.addAttribute("username", user.getUsername());
			return "/user/index";
		}
	} 
	
	//GET用户登录的页面
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String userLogin(){
		return "/user/login";
	}
	
	//处理用户填写的登录表单
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String processUserLogin(User u){
		//如果没有这个人，重新填写

		if(!userList.LoginRight(u)){
			return "/user/login";
		}else{
			//有则存下来
			user = u;			
			return "redirect:/user/index";
		}
	}
	
	//GET用户注册页面
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String userRegister(){
		return "/user/register";
	}
	
	//处理用户注册
	@RequestMapping(value="register",method=RequestMethod.POST)
	public String processUserRegister(User u){
		
		if(!userList.Registed(u.getUsername())){
			userList.save(u);
			user = u;
			return "redirect:/user/index";
		}
		else return "/user/register";
	}
	
	@RequestMapping(value="logout")
	public String userLogout(){
		user = null;
		return "redirect:/user/login";
	}
}
