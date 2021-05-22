
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<jsp:useBean id="login" class="com.login.DoLogin">
</jsp:useBean>
<%
	String userName=new String(request.getParameter("userName")
			.getBytes("ISO-8859-1"),"UTF-8");
	String password=new String(request.getParameter("password")
			.getBytes("ISO-8859-1"),"UTF-8");
%>
<jsp:setProperty property="userName" name="login"/>
<jsp:setProperty property="password" name="login"/>
<%
	if(login.checkLogin()==1){
		session.setAttribute("userName", userName);
		out.print("home.jsp");
	} else{
		out.print("error");
}
%>