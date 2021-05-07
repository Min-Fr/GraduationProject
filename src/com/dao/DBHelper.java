package com.dao;

import java.nio.channels.ReadPendingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.management.Query;

public class DBHelper implements DBConfig{
     Connection conn;
     Statement stat;
     ResultSet rs;
     //��������
     public Connection getConnection(){
    	 try {
    		 Class.forName(diver).newInstance();
    		 conn=DriverManager.getConnection(url, user, password);
    		 return conn;
    		 
		} catch (Exception e) {
			e.printStackTrace();
		}
    	 return null;
     }
     //��������
     public Statement openStatement(){
    	 try {
			stat=getConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			return stat;
    		 
		} catch (Exception e) {
			e.printStackTrace();
		}
    	 return null;
     }
     //�������ݿ�
     public int updata(String sql){
    	 try {
			return openStatement().executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	 return 0;
     }
     //��ѯ���ݿ�
     public ResultSet query(String sql){
    	 try {
			rs=openStatement().executeQuery(sql);
			return rs;
    		 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    	 return null;
     }
     //�ر����ݿ�
     public void close(){
    	 try {
			if(rs!=null){
				rs.close();
			}if(stat!=null){
				stat.close();
			}if(conn!=null){
				conn.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
    	 
     }
}
