package com.wq.intercepter;

import com.wq.Student;
import com.wq.constant.LoginConstant;
import com.wq.util.RequestUtil;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 登陆拦截器
 * 场景：用户操作的时候，我们进行登陆拦截器操作，判断用户是否登陆？
 * 登陆，则不拦截，没登陆，则转到登陆界面；
 *
 * @author liuzhibo
 */
public class StudentLoginIntercepter extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
        String requestURI = request.getRequestURI();
        if (isNeedLogin(requestURI)) {
            //说明处在编辑的页面
            HttpSession session = request.getSession();
            Student student = (Student) session.getAttribute(LoginConstant.STUDENT_SESSION);
            if (student != null) {
                // 用户已经登录，返回true
                return true;
            } else {
                //没有登陆，跳转至登录页面
                response.sendRedirect(RequestUtil.getBasePath(request) + "student/login");
                return false;
            }
        } else {
            return true;
        }
    }

    private boolean isNeedLogin(String url){
        if(url.contains("login") || url.contains("register") || url.contains("logout")){
            return false;
        }
        return true;
    }
}
