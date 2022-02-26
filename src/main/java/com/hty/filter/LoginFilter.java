package com.hty.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//用来过滤非法登陆
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        HttpSession session = req.getSession();

        Object userSession = session.getAttribute("userSession");

        if(userSession == null){
            resp.sendRedirect("http://localhost:8080/ssmbuild/login.jsp");
        }
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
