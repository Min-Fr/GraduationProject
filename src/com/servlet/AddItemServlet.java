package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.item.AddItem;

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
		String[] items=new String[18];
		items[0] = new String(req.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
		items[1] = new String(req.getParameter("weight").getBytes("ISO-8859-1"),"UTF-8");
		items[2] = new String(req.getParameter("huowufenlei").getBytes("ISO-8859-1"),"UTF-8");
		items[3] = new String(req.getParameter("huowuzhuangtai").getBytes("ISO-8859-1"),"UTF-8");
		items[4] = new String(req.getParameter("cangkufenlei").getBytes("ISO-8859-1"),"UTF-8");
		items[5] = new String(req.getParameter("speed").getBytes("ISO-8859-1"),"UTF-8");
		items[6] = new String(req.getParameter("jiName").getBytes("ISO-8859-1"),"UTF-8");
		items[7] = new String(req.getParameter("jiPhone").getBytes("ISO-8859-1"),"UTF-8");
		items[8] = new String(req.getParameter("sheng").getBytes("ISO-8859-1"),"UTF-8");
		items[9] = new String(req.getParameter("shi").getBytes("ISO-8859-1"),"UTF-8");
		items[10] = new String(req.getParameter("qu").getBytes("ISO-8859-1"),"UTF-8");
		items[11] = new String(req.getParameter("other4").getBytes("ISO-8859-1"),"UTF-8");
		items[12] = new String(req.getParameter("shouName").getBytes("ISO-8859-1"),"UTF-8");
		items[13] =new String(req.getParameter("shouPhone").getBytes("ISO-8859-1"),"UTF-8");
		items[14] = new String(req.getParameter("shengT").getBytes("ISO-8859-1"),"UTF-8");
		items[15] = new String(req.getParameter("shiT").getBytes("ISO-8859-1"),"UTF-8");
		items[16] = new String(req.getParameter("quT").getBytes("ISO-8859-1"),"UTF-8");
		items[17] = new String(req.getParameter("other5").getBytes("ISO-8859-1"),"UTF-8");
		new AddItem().additems(items);
		out.print("添加成功！");
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
}
