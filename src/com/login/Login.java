package com.login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

public class Login {
	private String userName;
	private String password;
	
	public Login() {
		// TODO �Զ����ɵĹ��캯�����
	}
	
	public boolean checkLogin(HttpServletResponse response){
		System.out.println(userName);
		if(userName!=null&&password!=null){
    		if(userName.equals("admin")&&password.equals("admin")){
        		try {
					response.sendRedirect("doLogin.jsp");
					return true;
				} catch (IOException e) {
					// TODO �Զ����ɵ� catch ��
					e.printStackTrace();
				}
        	}else{
        		return false;
        	}
    	}
		return true;
	}
	
	public void setUserName(String userName){
		this.userName=userName;
	}
	
	public void setPassword(String password){
		this.password=password;
	}
}
