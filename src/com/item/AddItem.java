package com.item;

import java.sql.ResultSet;

import org.json.JSONObject;

import com.dao.DBHelper;

public class AddItem {
	public AddItem() {
		// TODO Auto-generated constructor stub
	}
	
	/*
	 * json�ַ���תjson����,json������תJSONObject����
	 * */
	public JSONObject toJSONobject(String json){
		
		return null;	
	}
	
	/*
	 * ��Ӷ��������ݿ�
	 * json ǰ�˴��ص�json�ַ���
	 * user �û���
	 * */
	public void additems(String json,String user){
		//����û�Ȩ��
		int power=CheckUserPower.userPower(user);
		//���json����
		//JSONArray jsonArray=toJSONArray(json);
		//�������ݿ�
		DBHelper driver=new DBHelper();
		driver.openStatement();
		ResultSet rs;
		String sql=null;
		//sql="insert into dingdan values"
			//	+ "('"++"',";
	}
}
