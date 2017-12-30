package com.wq.controller;

import com.wq.*;
import com.wq.Service.*;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.wq.constant.LoginConstant;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value = "/student")
public class StudentController {
    @Autowired
    private StudentService studentService;
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private ProjectService projectService;
    @Autowired
    private BatchService batchService;
    @Autowired
    private AnnouncementService accouncementService;

    HttpSession session = null;

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    //访问用户的私人主页
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String Student(Model model) {
        List<Announcement> announcementList = accouncementService.listAllAnnouncement();
        model.addAttribute("announcementList", announcementList);
        return "student/index";
    }

    //GET用户登录的页面
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String StudentLogin() {
        return "student/login";
    }

    //处理用户填写的登录表单
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String processStudentLogin(Student stu, HttpServletRequest request) {
        Student student = studentService.CorrectLogin(stu);
        //如果没有这个人，重新填写
        if (student == null) {
            return "/student/login";
        } else {
            session = request.getSession();
            session.setAttribute(LoginConstant.STUDENT_SESSION, student);
            return "redirect:/student/index";
        }
    }

    //GET用户注册页面
    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String StudentRegister() {
        if (session != null && session.getAttribute("student") != null) {
            return "redirect:/student/index";
        }
        return "student/register";
    }

    //处理用户注册
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String processStudentRegister(Student s, HttpServletRequest request) {

        if (!studentService.Registed(s.getstudentname())) {

            studentService.save(s);
            session = request.getSession();
            session.setAttribute("student", studentService.getByName(s.getstudentname()));
            return "redirect:/student/index";
        } else {
            return "student/register";
        }
    }

    @RequestMapping(value = "/logout")
    public String StudentLogout() {
        session.removeAttribute("student");
        return "redirect:/index";
    }

    //申请GET
    @RequestMapping(value = "/projectApplication", method = RequestMethod.GET)
    public String projectAppliaction(Model model) {
        List<ProjectBatch> batch = batchService.appliactionAllowed();
        if (batch != null) {
            model.addAttribute("batch", batch);
            List<Teacher> lt = teacherService.getAllTeacher();
            model.addAttribute("teacher", lt);
            return "student/projectApplication1";
        } else {
            return "student/cannotApplication";
        }
    }

    //申请POST
    @RequestMapping(value = "/projectApplication", method = RequestMethod.POST)
    public String processProjectAppliaction(Requisition requisition, HttpServletRequest request) throws Exception {
        projectService.save(requisition);

        return "redirect:/student/myProject";

    }

    @RequestMapping(value = "/myProject", method = RequestMethod.GET)
    public String myProject(Model model, HttpServletRequest request) {
        Student student = (Student) session.getAttribute("student");
        List<StudentProject> sp = projectService.listProjectByStudent(student.getId());
        model.addAttribute("myProject", sp);
        return "student/myProject";
    }

    //详情
    @RequestMapping(value = "/detail/{projectId}")
    public String detail(@PathVariable int projectId, Model model) {
        StudentProject project = projectService.getProjectById(projectId);
        model.addAttribute("project", project);
        return "student/detail";
    }

}
