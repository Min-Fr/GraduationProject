package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter{
	//登录页面的URI
	String LOGIN_URI="http://localhost:8080/GraduationProject/login.jsp";
	@Override
	public void destroy() {
		// TODO 自动生成的方法存根
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO 自动生成的方法存根
		HttpServletRequest request=(HttpServletRequest)arg0;
		HttpServletResponse response=(HttpServletResponse)arg1;
		HttpSession session=request.getSession();
		//请求的URI
		String path=request.getRequestURI();
		//获得sesion中的用户名
		String userName=(String) session.getAttribute("userName");
		//System.out.println(path);
		//如果请求的是登录页面,不需要过滤
		if(path.indexOf("/login.jsp")>-1||path.indexOf("/checkLogin.jsp")>-1){
			arg2.doFilter(request, response);
			return;
		}
		//判断是否登录（有无用户信息）
		else if (userName==null||userName.equals("")) {
			//跳转到登录页面
			//System.out.println("跳转到登录页面");
			response.sendRedirect(LOGIN_URI);
		}else {
			//继续访问
			//System.out.println("继续访问");
			arg2.doFilter(request, response);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO 自动生成的方法存根
		
	}

}
