package com.item;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.DBHelper;

public class CheckUserPower {
	public CheckUserPower() {
		// TODO Auto-generated constructor stub
	}
	/*
	 * ��֤�û�Ȩ��
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
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
		//�ر����ݿ�����
		driver.close();
		return power;
	}
}
