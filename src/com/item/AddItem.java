package com.item;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.dao.DBHelper;

public class AddItem {
	public AddItem() {
		// TODO Auto-generated constructor stub
	}
	
	/*
	 * 添加订单到数据库
	 * */
	public void additems(String items[]){
		//链接数据库
		DBHelper driver=new DBHelper();
		driver.openStatement();
		String sql="INSERT INTO dingdan VALUES(0,'"+items[0]+"','"+items[1]+"','"+items[2]+"','"
				+items[3]+"','"+items[4]+"','"+items[5]+"','"+items[6]+"','"+items[7]+"','"+items[8]+"','"
				+items[9]+"','"+items[10]+"','"+items[11]+"','"+items[12]+"','"+items[13]+"','"+items[14]+"','"
				+items[15]+"','"+items[16]+"','"+items[17]+"','完好','')";
		System.out.println(sql);
		driver.updata(sql);
	}
}
