package com.wq.web;

import com.wq.User;
import com.wq.data.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping(value="/manager")
public class managerController {
	

	private UserRepository userList;

	@Autowired
	public managerController(UserRepository ur){
		this.userList = ur;
	}
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String ManagerIndex(){
		return "manager/index";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String ManagerLogin(){
		return "manager/login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String processManagerLogin(HttpServletRequest request,HttpServletResponse response){
		if(request.getParameter("mname").equals("admin") && request.getParameter("mpassword").equals("123")){
			return "redirect:/manager/index";
		}
		else return "manager/login";
	}
	
	@RequestMapping(value="/allUsers",method=RequestMethod.GET)
	public String showAllUsers(Model model){
		List<User> u = userList.findAll();
		model.addAttribute("allusers",u);
		return "manager/allUsers";
	}
	
	@RequestMapping(value="/delete/{userId}",method=RequestMethod.GET)
	public String deleteUser(@PathVariable long userId){
		userList.Delete(userId);
		return "redirect:/manager/allUsers";
	}
	
	@RequestMapping(value="/find")
	public String find(){
		return "manager/findByName";
	}
	
	@RequestMapping(value="/find",method=RequestMethod.POST)
	public String findByName(HttpServletRequest request,Model model){
		User u = userList.findByName(request.getParameter("uname"));
		model.addAttribute("user",u);
		return "manager/find";
	}

	@RequestMapping(value="/logout")
	public String logOut(){
		return "redirect:/index";
	}
}
