package com.login;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.DBHelper;

public class DoLogin {
	String username=null;
	String password=null;
	public DoLogin(){
		
	}
	
	/*
	 * �����˺�
	 * */
	public void setUserName(String userName){
		this.username=userName;
	}
	
	/*
	 * ��������
	 * */
	public void setPassword(String password){
		this.password=password;
	}
	
	/*
	 *��֤��¼��Ϣ
	 *flag 1Ϊ��ȷ��0Ϊ����
	 * */
	public int checkLogin(){
		int flag=0;
		DBHelper driver=new DBHelper();
		driver.openStatement();
		ResultSet rs=driver.query("select * from user");
		try {
			while(rs.next()){
				if(rs.getString("user").equals(username)
						&&rs.getString("password").equals(password)){
					flag=1;
					break;
				}
			}
		} catch (SQLException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
		driver.close();
		return flag;
	}
}
