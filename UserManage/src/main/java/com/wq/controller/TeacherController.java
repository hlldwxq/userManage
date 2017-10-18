package com.wq.controller;

import com.wq.*;
import com.wq.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.List;

@Controller
@RequestMapping(value="/teacher")
public class TeacherController {
	
	@Autowired private TeacherService teacherService;
	@Autowired private BatchService batchService;
	@Autowired private ProjectService projectService;
	
	HttpSession session = null;
	
	//主页
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String TeacherIndex(){
		if(session == null || session.getAttribute("teacher")==null){
			return "redirect:/teacher/login";
		}
		return "teacher/index";
	}
	
	//登录GET
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String TeacherLogin(){
		return "teacher/login";
	}
	
	//登录POST
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String processTeacherLogin(Teacher t,HttpServletRequest request){
		Teacher teacher = teacherService.CorrectLogin(t);
		if(teacher!=null){
			session = request.getSession();
			session.setAttribute("teacher", teacher);
			return "redirect:/teacher/index";
		}
		else return "/teacher/login";
	}
	
	@RequestMapping(value="newBatch",method=RequestMethod.GET)
	public String newBatch(){
		return "teacher/administrator/NewBatch";
	}
	
	@RequestMapping(value="newBatch",method=RequestMethod.POST)
	public String processNewBatch(ProjectBatch batch){
		batchService.save(batch);
		return "redirect:/teacher/allBatch";
	}
	
	@RequestMapping(value="allBatch",method=RequestMethod.GET)
	public String allBatch(Model model){
		List<ProjectBatch> batch = batchService.listAllBatch();
		model.addAttribute("batchList", batch);
		return "teacher/allBatch";
	}
	
	@RequestMapping(value="nextState/{year}/{type}",method=RequestMethod.GET)
	public String nextState(@PathVariable int year,@PathVariable int type,Model model){
		batchService.nextState(year, type);
		projectService.failedPass(year, type);
		projectService.nextState(year, type);
		return "redirect:/teacher/allBatch";
	}
	
	@RequestMapping(value="logout")
	public String logOut(){
		session = null;
		return "redirect:/index";
	}
	
	@RequestMapping(value="myProject",method=RequestMethod.GET)
	public String myProject(Model model){
		Teacher t = (Teacher)session.getAttribute("teacher");
		List<StudentProject> sp = projectService.listProjectByTeacher(t.getId());
		model.addAttribute("projectList", sp);
		return "teacher/myProject";
	}
	
	@RequestMapping(value="/examine",method=RequestMethod.GET)
	public String myExamine(Model model){
		Teacher t = (Teacher)session.getAttribute("teacher");
		List<StudentProject> sp = projectService.listProjectByExpert(t.getId());
		model.addAttribute("projectList", sp);
		return "teacher/assessor/myExamine";
	}
	
	@RequestMapping(value="examine/{projectId}",method=RequestMethod.POST)
	public String examineGrade(@PathVariable int projectId,HttpServletRequest request){
		int firstGrade = Integer.parseInt(request.getParameter("grade"));
		projectService.updateFirstGrade(firstGrade, projectId);
		return "redirect:/teacher/examine";
	}
	
	@RequestMapping(value="knot/{projectId}",method=RequestMethod.POST)
	public String kontGrade(@PathVariable int projectId,HttpServletRequest request){
		int secondGrade = Integer.parseInt(request.getParameter("grade"));
		projectService.updateSecondGrade(secondGrade, projectId);
		return "redirect:/teacher/examine";
	}
	
	@RequestMapping(value="{state}",method=RequestMethod.GET)
	public String findProject(@PathVariable int state,Model model){
		List<StudentProject> spl = projectService.listProjectByStatus(state);
		model.addAttribute("projectList", spl);
		model.addAttribute("state",state);
		if(state==StudentProject.WAIT_PASS){
			List<Teacher> tl = teacherService.getExpert();
			model.addAttribute("expert",tl);
		}
		return "teacher/checkProject";
	}
	
	@RequestMapping(value="expert/{projectId}",method=RequestMethod.POST)
	public String expert(@PathVariable int projectId,HttpServletRequest request){
		String teacherId = request.getParameter("expert");
		projectService.updateExpert(projectId, teacherId);
		return "redirect:/teacher/"+StudentProject.WAIT_PASS;
	}
	
	@RequestMapping(value="projectPass/{id}",method=RequestMethod.GET)
	public String passProject(@PathVariable int id,Model model){
		projectService.nextState(id);
		return "redirect:/teacher/"+StudentProject.WAIT_PASS;
	}
	
//	//查看所有学生
//	@RequestMapping(value="/allUsers",method=RequestMethod.GET)
//	public String showAllUsers(Model model){
//		List<User> u = userService.listAllUser();
//		model.addAttribute("allusers",u);
//		return "Teacher/allUsers";
//	}
//	//删除学生
//	@RequestMapping(value="/delete/{userId}",method=RequestMethod.GET)
//	public String deleteUser(@PathVariable Integer userId){
//		userService.deleteById(userId);
//		return "redirect:/Teacher/allUsers";
//	}
//	
//	@RequestMapping(value="/find",method=RequestMethod.GET)
//	public String find(){
//		return "Teacher/findByName";
//	}
//	
//	@RequestMapping(value="/find",method=RequestMethod.POST)
//	public String findByName(HttpServletRequest request,Model model){
//		User u = userService.getByName(request.getParameter("uname"));
//		model.addAttribute("user",u);
//		return "Teacher/find";
//	}
	
}
