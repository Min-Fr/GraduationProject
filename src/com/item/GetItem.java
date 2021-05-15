package com.item;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.User;

import com.dao.DBHelper;
import com.google.gson.Gson;

public class GetItem {
	public GetItem() {
		// TODO 自动生成的构造函数存根
	}
	
	/*
	 * 验证用户权限
	 * */
	public int userPower(String user){
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
	
	/*
	 * List转Json
	 * */
	public String listToJson(List list){
		Gson gson=new Gson();
		String json=gson.toJson(list);
		return json;
	}
	
	/*
	 * 获得订单列表
	 * user 用户名
	 * */
	public String getList(String user){
		List list=new ArrayList<String>();
		//获得用户权限
		int power=userPower(user);
		DBHelper driver=new DBHelper();
		driver.openStatement();
		ResultSet rs;
		//如果是管理则无需判断用户名
		if(power==1){
			rs=driver.query("select * from dingdan");
		}else{
			rs=driver.query("select * from dingdan where user='"+user+"'");
		}
		try {
			while(rs.next()){
				for(int i=1;i<=9;i++){
					String item=rs.getString(i);
					list.add(item);
				}
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		//list转json
		String json=listToJson(list);
		return json;
	}
	
	
	/*public static void main(String[] args) {
		System.out.println(""+new GetItem().getList("xietingfeng"));
	}*/
}
