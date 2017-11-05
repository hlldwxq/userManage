package com.wq.controller;


import com.wq.*;
import com.wq.Service.*;

import java.io.File;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value="/student")
public class StudentController {
	@Autowired private StudentService studentService;
	@Autowired private TeacherService teacherService;
	@Autowired private ProjectService projectService;
	@Autowired private BatchService batchService;
	@Autowired private ProjectFileService fileService;
	
	HttpSession session = null;
	
	//访问用户的私人主页
	@RequestMapping(value="/index",method=RequestMethod.GET)  
	public String Student() {
		if(session == null || session.getAttribute("student") == null){
			//没有用户登录应该让其登录
			return "redirect:/student/login";
		}else{
			return "student/index";
		}
	} 
	
	//GET用户登录的页面
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String StudentLogin(){
		if(session!=null && session.getAttribute("student")!=null){
			return "redirect:student/index";
		}
		return "student/login";
	}
	
	//处理用户填写的登录表单
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String processStudentLogin(Student s,HttpServletRequest request){
		//如果没有这个人，重新填写
		if(!studentService.CorrectLogin(s)){
			return "/student/login";
		}else{
			//有则存在
			session = request.getSession();
			session.setAttribute("student", studentService.getById(s.getId()));
			return "redirect:/student/index";
		}	
	}
	
	//GET用户注册页面
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String StudentRegister(){
		if(session!=null && session.getAttribute("student")!=null){
			return "redirect:/student/index";
		}
		return "student/register";
	}
	
	//处理用户注册
	@RequestMapping(value="register",method=RequestMethod.POST)
	public String processStudentRegister(Student s,HttpServletRequest request){
		
		if(!studentService.Registed(s.getstudentname())){

			studentService.save(s);
			session = request.getSession();
			session.setAttribute("student", studentService.getByName(s.getstudentname()));
			return "redirect:/student/index";
		}else{
			return "student/register";
		}
	}
	
	@RequestMapping(value="logout")
	public String StudentLogout(){
		session.removeAttribute("student");
		return "redirect:/index";
	}
	
	@RequestMapping(value="/projectApplication",method=RequestMethod.GET)
	public String projectAppliaction(Model model){
		ProjectBatch batch = batchService.appliactionAllowed();
		if(batch!=null){
			model.addAttribute("batch", batch);
			List<Teacher> lt = teacherService.getAllTeacher();
			model.addAttribute("teacher",lt);
			return "student/projectApplication";
		}
		else{
			return "student/cannotApplication";
		}
		
	}
	
	@RequestMapping(value="/projectApplication",method=RequestMethod.POST)
	public String processProjectAppliaction(StudentProject studentProject,MultipartFile reqisition,HttpServletRequest request)throws Exception{
		projectService.projectApplication(studentProject);
		
		String filename = reqisition.getOriginalFilename();
		ProjectFile f = new ProjectFile(filename,studentProject.getProjectId(),"申请书");
		fileService.save(f);
		String leftPath = "D:/GITRepository/file";  //************目录************//
		File file = new File(leftPath,filename);
		reqisition.transferTo(file);
		return "redirect:/student/myProject";
	}
	
	@RequestMapping(value="/myProject",method=RequestMethod.GET)
	public String myProject(Model model,HttpServletRequest request){
		Student student = (Student)session.getAttribute("student");
		List<StudentProject> sp = projectService.listProjectByStudent(student.getId());
		model.addAttribute("myProject", sp);
		return "student/myProject";
	}
	
	
}
