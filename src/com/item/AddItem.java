package com.item;

import java.sql.ResultSet;

import org.json.JSONObject;

import com.dao.DBHelper;

public class AddItem {
	public AddItem() {
		// TODO Auto-generated constructor stub
	}
	
	/*
	 * json字符串转json数组,json数组再转JSONObject对象
	 * */
	public JSONObject toJSONobject(String json){
		
		return null;	
	}
	
	/*
	 * 添加订单到数据库
	 * json 前端传回的json字符串
	 * user 用户名
	 * */
	public void additems(String json,String user){
		//获得用户权限
		int power=CheckUserPower.userPower(user);
		//获得json数组
		//JSONArray jsonArray=toJSONArray(json);
		//链接数据库
		DBHelper driver=new DBHelper();
		driver.openStatement();
		ResultSet rs;
		String sql=null;
		//sql="insert into dingdan values"
			//	+ "('"++"',";
	}
}
