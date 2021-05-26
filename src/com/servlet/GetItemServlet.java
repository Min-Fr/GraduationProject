package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.item.GetItem;

public class GetItemServlet extends HttpServlet{
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();
		PrintWriter out=resp.getWriter();
		String user=(String)session.getAttribute("userName");
		GetItem getItem=new GetItem();
		String json=getItem.getList(user);
		System.out.println("user="+user+"json="+json);
		out.print(json);
		out.flush();
		out.close();
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
}
