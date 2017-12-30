package com.wq.controller;

import com.wq.Announcement;
import com.wq.ProjectBatch;
import com.wq.Service.AnnouncementService;
import com.wq.Service.BatchService;
import com.wq.Service.ProjectService;
import com.wq.Service.TeacherService;
import com.wq.StudentProject;
import com.wq.Teacher;
import com.wq.constant.LoginConstant;
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
@RequestMapping(value = "/teacher")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;
    @Autowired
    private BatchService batchService;
    @Autowired
    private ProjectService projectService;
    @Autowired
    private AnnouncementService accouncementService;
    HttpSession session = null;

    //主页
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String TeacherIndex(Model model) {
        List<Announcement> announcementList = accouncementService.listAllAnnouncement();
        model.addAttribute("announcementList", announcementList);
        return "teacher/index";
    }

    //登录GET
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String TeacherLogin() {
        return "teacher/login";
    }

    //登录POST
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String processTeacherLogin(Teacher t, HttpServletRequest request) {
        Teacher teacher = teacherService.CorrectLogin(t);
        if (teacher == null) {
            return "/teacher/login";
        } else {
            session = request.getSession();
            session.setAttribute(LoginConstant.TEACHER_SESSION, teacher);
            return "redirect:/teacher/index";
        }
    }

    @RequestMapping(value = "newBatch", method = RequestMethod.GET)
    public String newBatch() {
        return "teacher/administrator/NewBatch";
    }

    @RequestMapping(value = "newBatch", method = RequestMethod.POST)
    public String processNewBatch(ProjectBatch batch) {
        batchService.save(batch);
        return "redirect:/teacher/allBatch";
    }

    @RequestMapping(value = "allBatch", method = RequestMethod.GET)
    public String allBatch(Model model) {
        List<ProjectBatch> batch = batchService.listAllBatch();
        model.addAttribute("batchList", batch);
        return "teacher/allBatch";
    }

    @RequestMapping(value = "nextState/{year}/{level}", method = RequestMethod.GET)
    public String nextState(@PathVariable int year, @PathVariable int level, Model model) {
        batchService.nextState(year, level);
        ProjectBatch b = batchService.getBatchByYearAndLevel(year, level);
        System.out.println(b.getState() + "---------------------");
        if (b.getState() == 2) {
            projectService.failedPass(year, level);
        } else if (b.getState() > 4) {
            projectService.failedKont(year, level);
        } else {
            projectService.nextState(year, level);
        }
        return "redirect:/teacher/allBatch";
    }

    @RequestMapping(value = "logout")
    public String logOut() {
        session = null;
        return "redirect:/index";
    }

    @RequestMapping(value = "myProject", method = RequestMethod.GET)
    public String myProject(Model model) {
        Teacher t = (Teacher) session.getAttribute("teacher");
        List<StudentProject> sp = projectService.listProjectByTeacher(t.getId());
        model.addAttribute("projectList", sp);
        return "teacher/myProject";
    }

    @RequestMapping(value = "/examine", method = RequestMethod.GET)
    public String myExamine(Model model) {
        Teacher t = (Teacher) session.getAttribute("teacher");
        List<StudentProject> sp = projectService.listProjectByExpert(t.getId());
        model.addAttribute("projectList", sp);
        return "teacher/assessor/myExamine";
    }

    //申请评分
    @RequestMapping(value = "examine/{projectId}", method = RequestMethod.POST)
    public String examineGrade(@PathVariable int projectId, HttpServletRequest request) {
        Teacher t = (Teacher) session.getAttribute("teacher");
        int firstGrade = Integer.parseInt(request.getParameter("grade"));
        projectService.updateFirstGrade(firstGrade, projectId, t.getId());
        return "redirect:/teacher/examine";
    }

    //结项评分
    @RequestMapping(value = "knot/{projectId}", method = RequestMethod.POST)
    public String kontGrade(@PathVariable int projectId, HttpServletRequest request) {
        Teacher t = (Teacher) session.getAttribute("teacher");
        int secondGrade = Integer.parseInt(request.getParameter("grade"));
        projectService.updateSecondGrade(secondGrade, projectId, t.getId());
        return "redirect:/teacher/examine";
    }

    //管理员通过结项
    @RequestMapping(value = "knot/{projectId}", method = RequestMethod.GET)
    public String kont(@PathVariable int projectId, HttpServletRequest request) {
        projectService.nextState(projectId);
        return "redirect:/teacher/0";
    }

    //查看不同阶段的项目
    @RequestMapping(value = "{state}", method = RequestMethod.GET)
    public String findProject(@PathVariable int state, Model model) {
        List<StudentProject> spl = projectService.listProjectByStatus(state);
        model.addAttribute("projectList", spl);
        if (state == StudentProject.WAIT_PASS) {
            List<Teacher> tl = teacherService.getExpert();
            model.addAttribute("expert", tl);
        }
        return "teacher/checkProject";
    }

    //分配审核老师
    @RequestMapping(value = "expert/{projectId}", method = RequestMethod.POST)
    public String expert(@PathVariable int projectId, HttpServletRequest request) {
        //只有一个，只有两个，有重复
        String teacherId1 = request.getParameter("expert1");
        String teacherId2 = request.getParameter("expert2");
        String teacherId3 = request.getParameter("expert3");
        //只有一个
        if (teacherId1 != "" && teacherId2 != "" && teacherId3 != "") {
            projectService.updateExperts(projectId, teacherId1, teacherId2, teacherId3);
        }
        //只有两个
        return "redirect:/teacher/" + StudentProject.WAIT_PASS;
    }

    //管理员通过申请
    @RequestMapping(value = "projectPass/{id}", method = RequestMethod.GET)
    public String passProject(@PathVariable int id, Model model) {
        projectService.nextState(id);
        return "redirect:/teacher/" + StudentProject.WAIT_PASS;
    }

    //公告
    @RequestMapping(value = "newAnnouncement", method = RequestMethod.GET)
    public String newAnnouncement() {
        return "teacher/administrator/newAnnouncement";
    }

    @RequestMapping(value = "newAnnouncement", method = RequestMethod.POST)
    public String processNewAnnouncement(Announcement accouncement) {
        Teacher t = (Teacher) session.getAttribute("teacher");
        java.util.Date date = new java.util.Date();
        java.sql.Date sqldate = new java.sql.Date(date.getTime());
        accouncement.setCreateDate(sqldate);
        accouncement.setAnnouncer(t.getTeacherName());
        accouncementService.save(accouncement);
        return "redirect:/teacher/index";
    }

    //删除公告
    @RequestMapping(value = "deleteAnnounce/{announceId}", method = RequestMethod.GET)
    public String deleteAnnounce(@PathVariable int announceId) {
        accouncementService.deleteById(announceId);
        return "redirect:/teacher/index";
    }

}