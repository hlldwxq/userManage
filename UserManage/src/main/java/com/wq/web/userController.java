package com.wq.web;

import com.wq.User;
import com.wq.data.hibernateUserRepository;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/user")
public class userController {
	@Autowired private hibernateUserRepository userList;
	HttpSession session = null;
	
	//访问用户的私人主页
	@RequestMapping(value="/index",method=RequestMethod.GET)  
	public String user() {
		if(session == null || session.getAttribute("user")==null){
			//没有用户登录应该让其登录
			return "redirect:/user/login";
		}
		else{
			return "/user/index";
		}
	} 
	
	//GET用户登录的页面
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String userLogin(){
		if(session!=null && session.getAttribute("user")!=null){
			return "redirect:/user/index";
		}
		return "/user/login";
	}
	
	//处理用户填写的登录表单
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String processUserLogin(User u,HttpServletRequest request){
		//如果没有这个人，重新填写
		if(!userList.LoginRight(u)){
			return "/user/login";
		}else{
			//有则存在
			session = request.getSession();
			session.setAttribute("user", userList.findByName(u.getUsername()));
			return "redirect:/user/index";
		}	
}
	
	//GET用户注册页面
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String userRegister(){
		if(session!=null && session.getAttribute("user")!=null){
			return "redirect:/user/index";
		}
		return "/user/register";
	}
	
	//处理用户注册
	@RequestMapping(value="register",method=RequestMethod.POST)
	public String processUserRegister(User u,HttpServletRequest request){
		
		if(!userList.Registed(u.getUsername())){
			userList.save(u);
			session = request.getSession();
			session.setAttribute("user", userList.findByName(u.getUsername()));
			return "redirect:/user/index";
		}
		else return "/user/register";
	}
	
	@RequestMapping(value="logout")
	public String userLogout(){
		session.removeAttribute("user");
		return "redirect:/index";
	}
	
	//搜索其他用户
	@RequestMapping(value="/find",method=RequestMethod.POST)
	public String RedirectUserFind(Model model,HttpServletRequest request){
		String t = request.getParameter("t");
		List<User> l = userList.findByIdAll(t);
		List<User> l1 = userList.findByNameAll(t);
		l.addAll(l1);
		
		model.addAttribute("list", l);
		return "user/find";
	}

}
