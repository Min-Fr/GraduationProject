package com.item;

import java.sql.ResultSet;

import org.json.JSONArray;

import com.dao.DBHelper;

public class AddItem {
	public AddItem() {
		// TODO Auto-generated constructor stub
	}
	
	/*
	 * json�ַ���ת����
	 * */
	public JSONArray toJSONArray(String json){
		
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
		JSONArray jsonArray=toJSONArray(json);
		//�������ݿ�
		DBHelper driver=new DBHelper();
		driver.openStatement();
		ResultSet rs;
		String sql=null;
		if(power==1){
			sql="insert into dingdan values"
					+ "('"++"',";
		}else{
			
		}
	}
}
