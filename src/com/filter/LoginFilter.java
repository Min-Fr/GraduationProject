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
	//��¼ҳ���URI
	String LOGIN_URI="http://localhost:8080/GraduationProject/login.jsp";
	@Override
	public void destroy() {
		// TODO �Զ����ɵķ������
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO �Զ����ɵķ������
		HttpServletRequest request=(HttpServletRequest)arg0;
		HttpServletResponse response=(HttpServletResponse)arg1;
		HttpSession session=request.getSession();
		//�����URI
		String path=request.getRequestURI();
		//���sesion�е��û���
		String userName=(String) session.getAttribute("userName");
		//System.out.println(path);
		//���������ǵ�¼ҳ��,����Ҫ����
		if(path.indexOf("/login.jsp")>-1||path.indexOf("/checkLogin.jsp")>-1){
			arg2.doFilter(request, response);
			return;
		}
		//�ж��Ƿ��¼�������û���Ϣ��
		else if (userName==null||userName.equals("")) {
			//��ת����¼ҳ��
			//System.out.println("��ת����¼ҳ��");
			response.sendRedirect(LOGIN_URI);
		}else {
			//��������
			//System.out.println("��������");
			arg2.doFilter(request, response);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO �Զ����ɵķ������
		
	}

}
