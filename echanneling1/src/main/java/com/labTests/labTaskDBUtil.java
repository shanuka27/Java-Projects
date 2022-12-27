package com.labTests;

import java.sql.Connection;
import java.sql.Statement;

import database.DBConnect;

public class labTaskDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	
	public static boolean addLabTest(String pid,String lid,String name,String phone) {
		
		boolean isSuccess = false;
		
		try {
			//DB connect part -------------------------------------------------------------------------------
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//------------------------------------------------------------------------------------------------------
			
			String sql = "insert into labtest values(0,'"+pid+"','"+lid+"','"+name+"','"+phone+"') ";
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
	
public static boolean updateLabTest(String ltid, String pid,String lid,String name,String phone) {
		
		
		boolean isSuccess = false;
		
		try {
			//DB connect part -------------------------------------------------------------------------------
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//------------------------------------------------------------------------------------------------------
			
			String sql = "update labtest set idpatient = '"+pid+"',idlabs = '"+lid+"', pname= '"+name+"', phone= '"+phone+"' where idlabtest = '"+ltid+"'";
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
	
public static boolean DeleteLabTest(String id) {
		
		boolean isSuccess = false;
		int convertedID = Integer.parseInt(id);
		
		try {
			//DB connect part -------------------------------------------------------------------------------
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Delete from labtest where idlabtest = '"+convertedID+"'"; 
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
