package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.DoLogin;

public class DoLoginServlet extends HttpServlet{
	public void init() throws javax.servlet.ServletException {
		
	};
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=resp.getWriter();
		HttpSession session=req.getSession();
		//.print("success!");
		//获得请求的消息
		String userName=new String(req.getParameter("userName")
				.getBytes("ISO-8859-1"),"UTF-8");
		String password=new String(req.getParameter("password")
				.getBytes("ISO-8859-1"),"UTF-8");
		DoLogin doLogin=new DoLogin();
		doLogin.setUserName(userName);
		doLogin.setPassword(password);
		if (doLogin.checkLogin()==1) {
			session.setAttribute("userName", userName);
			out.print("home.jsp");
		}else{
			out.print("账号或密码不正确，请重新输入！");
		}
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
}
