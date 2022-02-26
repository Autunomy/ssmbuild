package com.hty.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if(session.getAttribute("users") != null){
            return true;
        }
        if(request.getRequestURI().contains("login")){
            return true;
        }
        if(request.getRequestURI().contains("toAdminLogin")){
            return true;
        }
        if(request.getRequestURI().contains("adminLogin")){
            return true;
        }
        request.getRequestDispatcher("/login.jsp").forward(request,response);
        return false;
    }
}
