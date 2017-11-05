package com.wq.controller;

import com.wq.*;
import com.wq.Service.*;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value="/teacher")
public class TeacherController {
	
	@Autowired private TeacherService teacherService;
	@Autowired private BatchService batchService;
	@Autowired private ProjectService projectService;
	@Autowired private ProjectFileService fileService;
	
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
	
	@RequestMapping(value="nextState/{year}/{level}",method=RequestMethod.GET)
	public String nextState(@PathVariable int year,@PathVariable int level,Model model){
		batchService.nextState(year, level);
		ProjectBatch b = batchService.getBatchByYearAndLevel(year, level);
		if(b.getState()==2){
			projectService.failedPass(year, level);
		}
		else{
			projectService.nextState(year, level);
		}
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
	//申请评分
	@RequestMapping(value="examine/{projectId}",method=RequestMethod.POST)
	public String examineGrade(@PathVariable int projectId,HttpServletRequest request){
		int firstGrade = Integer.parseInt(request.getParameter("grade"));
		projectService.updateFirstGrade(firstGrade, projectId);
		return "redirect:/teacher/examine";
	}
	//结项评分
	@RequestMapping(value="knot/{projectId}",method=RequestMethod.POST)
	public String kontGrade(@PathVariable int projectId,HttpServletRequest request){
		int secondGrade = Integer.parseInt(request.getParameter("grade"));
		projectService.updateSecondGrade(secondGrade, projectId);
		return "redirect:/teacher/examine";
	}
	//查看不同阶段的项目
	@RequestMapping(value="{state}",method=RequestMethod.GET)
	public String findProject(@PathVariable int state,Model model){
		List<StudentProject> spl = projectService.listProjectByStatus(state);
		model.addAttribute("projectList", spl);
		if(state==StudentProject.WAIT_PASS){
			List<Teacher> tl = teacherService.getExpert();
			model.addAttribute("expert",tl);
		}
		return "teacher/checkProject";
	}
	//分配审核老师
	@RequestMapping(value="expert/{projectId}",method=RequestMethod.POST)
	public String expert(@PathVariable int projectId,HttpServletRequest request){
		String teacherId = request.getParameter("expert");
		projectService.updateExpert(projectId, teacherId);
		return "redirect:/teacher/"+StudentProject.WAIT_PASS;
	}
	//管理员通过申请
	@RequestMapping(value="projectPass/{id}",method=RequestMethod.GET)
	public String passProject(@PathVariable int id,Model model){
		projectService.nextState(id);
		return "redirect:/teacher/"+StudentProject.WAIT_PASS;
	}

	@RequestMapping(value="download/{projectId}/{type}",method=RequestMethod.GET)
	public ResponseEntity<byte[]> download(@PathVariable int projectId,@PathVariable int type) throws IOException{
		String leftPath = "D:/GITRepository/file/";
		ProjectFile f = fileService.listByProjectidAndType(projectId, "申请书").get(0);
		System.out.println(leftPath+f.getFile());
		File file = new File(leftPath+"/"+f.getFile());
		HttpHeaders headers = new HttpHeaders();
		String fileName = new String(f.getFile().getBytes("UTF-8"),"iso-8859-1");
		headers.setContentDispositionFormData("attachment", fileName);
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers,HttpStatus.OK);
	}
	
}