package com.order;

import java.sql.Connection;
import java.sql.Statement;

import database.DBConnect;

public class orderDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	
public static boolean addOrder(String pid, String phone,String name,String address,String mid){
		
		boolean isSuccess = false;
		
		try {
			//DB connect part -------------------------------------------------------------------------------
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//------------------------------------------------------------------------------------------------------
			
			String sql = "insert into echanneling.order values(0,'"+pid+"','"+phone+"','"+name+"','"+address+"','"+mid+"') ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
						
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}


public static boolean UpdateOrder(String oid, String pid, String phone,String name,String address,String mid){
	
	
	boolean isSuccess = false;
	
	try {
		//DB connect part -------------------------------------------------------------------------------
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		//------------------------------------------------------------------------------------------------------
		
		String sql = "update echanneling.order set idpatient = '"+pid+"',phone = '"+phone+"', name= '"+name+"', address= '"+address+"', idmedicine  = '"+mid+"' where idorder = '"+oid+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}else {
			isSuccess = false;			
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}

public static boolean DeleteOrder(String id) {
	
	boolean isSuccess = false;
	int convertedID = Integer.parseInt(id);
	
	try {
		//DB connect part -------------------------------------------------------------------------------
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "Delete from echanneling.order where idorder = '"+convertedID+"'"; 
		int r = stmt.executeUpdate(sql);
		
		if(r > 0) {
			isSuccess = true;
		}else {
			isSuccess = false;
					
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}

}

