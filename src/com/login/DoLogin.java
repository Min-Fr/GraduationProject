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
	 * 设置账号
	 * */
	public void setUserName(String userName){
		this.username=userName;
	}
	
	/*
	 * 设置密码
	 * */
	public void setPassword(String password){
		this.password=password;
	}
	
	/*
	 *验证登录信息
	 *flag 1为正确，0为错误
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
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		driver.close();
		return flag;
	}
}
