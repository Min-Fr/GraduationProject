package com.item;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.DBHelper;
import com.google.gson.Gson;

public class GetItem {
	public GetItem() {
		// TODO �Զ����ɵĹ��캯�����
	}
	
	/*
	 * ListתJson
	 * */
	public String listToJson(List list){
		Gson gson=new Gson();
		String json=gson.toJson(list);
		return json;
	}
	
	/*
	 * ��ö����б�
	 * user �û���
	 * */
	public String getList(String user){
		List list=new ArrayList<String>();
		//����û�Ȩ��
		int power=CheckUserPower.userPower(user);
		DBHelper driver=new DBHelper();
		driver.openStatement();
		ResultSet rs;
		//����ǹ����������ж��û���
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
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
		//listתjson
		String json=listToJson(list);
		return json;
	}
	
	
	/*public static void main(String[] args) {
		System.out.println(""+new GetItem().getList("xietingfeng"));
	}*/
}
