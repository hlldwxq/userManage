package com.wq.controller;


import com.wq.ProjectBatch;
import com.wq.StudentProject;
import com.wq.Teacher;
import com.wq.Student;
import com.wq.Service.BatchService;
import com.wq.Service.ProjectService;
import com.wq.Service.StudentService;
import com.wq.Service.TeacherService;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/student")
public class StudentController {
	@Autowired private StudentService studentService;
	@Autowired private TeacherService teacherService;
	@Autowired private ProjectService projectService;
	@Autowired private BatchService batchService;
	
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
			session.setAttribute("student", studentService.getByName(s.getstudentname()));
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
	public String processProjectAppliaction(StudentProject studentProject,HttpServletRequest request){
		projectService.projectApplication(studentProject);
		return "redirect:/student/myProject";
	}
	
	@RequestMapping(value="/myProject",method=RequestMethod.GET)
	public String myProject(Model model,HttpServletRequest request){
		Student student = (Student)session.getAttribute("student");
		List<StudentProject> sp = projectService.listProjectByStudent(student.getId());
		model.addAttribute("myProject", sp);
		return "student/myProject";
	}
	
//	@RequestMapping(value="/ajaxfind")
//	public void ajaxFind(HttpServletRequest request,HttpServletResponse response){
//		JSONObject json=new JSONObject();		
//		String keyWord = request.getParameter("keyword");
//		List<Student> list = StudentService.listStudentBySearch(keyWord);
//		for(int i = 0;i < list.size();i++){
//			json.put(list.get(i).getId(),list.get(i).getstudentname());
//		}
//		
//		PrintWriter out;
//		try {
//			out = response.getWriter();
//			out.print(json);
//	        out.close();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}	
//	}
	//搜索其他用户
//	@RequestMapping(value="/find",method=RequestMethod.POST)
//	public String redirectStudentFind(Model model,HttpServletRequest request){
//		String keyWord = request.getParameter("t");
//		List<Student> list = studentService.listStudentBySearch(keyWord);
//		model.addAttribute("list", list);
//		return "Student/find";
//	}
	
}
