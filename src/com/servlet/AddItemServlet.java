package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class AddItemServlet extends HttpServlet{
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=resp.getWriter();
		//获得请求的消息
		String name = new String(req.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
		String weight = new String(req.getParameter("weight").getBytes("ISO-8859-1"),"UTF-8");
		String huowufenlei = new String(req.getParameter("huowufenlei").getBytes("ISO-8859-1"),"UTF-8");
		String huowuzhuangtai = new String(req.getParameter("huowuzhuangtai").getBytes("ISO-8859-1"),"UTF-8");
		String cangkufenlei = new String(req.getParameter("cangkufenlei").getBytes("ISO-8859-1"),"UTF-8");
		String speed = new String(req.getParameter("speed").getBytes("ISO-8859-1"),"UTF-8");
		String jiName = new String(req.getParameter("jiName").getBytes("ISO-8859-1"),"UTF-8");
		String jiPhone = new String(req.getParameter("jiPhone").getBytes("ISO-8859-1"),"UTF-8");
		String sheng = new String(req.getParameter("sheng").getBytes("ISO-8859-1"),"UTF-8");
		String shi = new String(req.getParameter("shi").getBytes("ISO-8859-1"),"UTF-8");
		String qu = new String(req.getParameter("qu").getBytes("ISO-8859-1"),"UTF-8");
		String other4 = new String(req.getParameter("other4").getBytes("ISO-8859-1"),"UTF-8");
		String shouName = new String(req.getParameter("shouName").getBytes("ISO-8859-1"),"UTF-8");
		String shouPhone=new String(req.getParameter("shouPhone").getBytes("ISO-8859-1"),"UTF-8");
		String shengT = new String(req.getParameter("shengT").getBytes("ISO-8859-1"),"UTF-8");
		String shiT = new String(req.getParameter("shiT").getBytes("ISO-8859-1"),"UTF-8");
		String quT = new String(req.getParameter("quT").getBytes("ISO-8859-1"),"UTF-8");
		String other5 = new String(req.getParameter("other5").getBytes("ISO-8859-1"),"UTF-8");
		System.out.println(name+weight);
		out.print("!!!");
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
}
