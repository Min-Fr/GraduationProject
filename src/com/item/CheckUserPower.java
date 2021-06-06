package com.item;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.DBHelper;

public class CheckUserPower {
	public CheckUserPower() {
		// TODO Auto-generated constructor stub
	}
	/*
	 * 验证用户权限
	 * */
	public static int userPower(String user){
		int power=-1;
		DBHelper driver=new DBHelper();
		driver.openStatement();
		ResultSet rs=driver.query("select power from user where user='"+user+"'");
		try {
			while(rs.next()){
				power=rs.getInt("power");
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		//关闭数据库连接
		driver.close();
		return power;
	}
}
