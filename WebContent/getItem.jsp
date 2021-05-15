<%@ page language="java" contentType="text/html; charset=utf-8"%>
<jsp:useBean id="getItem" class="com.item.GetItem"></jsp:useBean>
<%
String user=(String)session.getAttribute("userName");
String json=getItem.getList(user);
System.out.println("user="+user+"json="+json);
out.clear();
out.print(json);
//System.out.println("缓冲区："+out.getBufferSize());
//System.out.println(out.getRemaining());
out.flush();
out.close();
%>
