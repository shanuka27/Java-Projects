package com.channel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import database.DBConnect;

public class ChannelingDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	boolean isSuccess = false;
	
	public static boolean addAppoinment(String did,String pid,String date, String name, String age) {
		
		boolean isSuccess = false;
		
		try {
			//DB connect part -------------------------------------------------------------------------------
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//------------------------------------------------------------------------------------------------------
			
			String sql = "insert into channel values(0,'"+did+"','"+pid+"','"+date+"','"+name+"','"+age+"') ";
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
	
	public static List<Channel> getAppointmentById(String pid){
		List<Channel> list=new ArrayList<Channel>();
		System.out.println("Call getAppoinment methode");
		try{
			Connection con=DBConnect.getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from channel where idpatient='"+ pid +"'");
			ResultSet rs=ps.executeQuery();

			
			while(rs.next()){
				Channel c = new Channel();
				c.setCid(rs.getInt("idchannel"));
				c.setDid(rs.getInt("iddoctor"));
				c.setPid(rs.getInt("idpatient"));
				c.setName(rs.getString("name"));
				c.setDate(rs.getString("date"));
				c.setAge(rs.getString("age"));
				System.out.println(rs.getInt("iddoctor"));
				
				PreparedStatement ps2 = con.prepareStatement("select * from doctor where iddoctor='"+ rs.getInt("iddoctor") +"'");
				ResultSet rs2 = ps2.executeQuery();
				
				while(rs2.next()){
					c.setDname(rs2.getString("dname"));
					c.setDtype(rs2.getString("type"));
					System.out.println(rs2.getString("dname"));
				}

				list.add(c);
				
			}
			con.close();
		}catch(Exception ex){ex.printStackTrace();System.out.println(ex);}
			
		return list;
	}
	
	public static boolean updateChannel(String cid,String pid,String name,String age,String did,String date) {
		
		
		boolean isSuccess = false;
		
		try {
			//DB connect part -------------------------------------------------------------------------------
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//------------------------------------------------------------------------------------------------------
			
			String sql = "update channel set iddoctor = '"+did+"', idpatient = '"+pid+"', date = '"+date+"', name = '"+name+"', age = '"+age+"'where idchannel = '"+cid+"'";
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
	
public static boolean deleteAppoinment(String id) {
		
		boolean isSuccess = false;
		int convertedID = Integer.parseInt(id);
		
		try {
			//DB connect part -------------------------------------------------------------------------------
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Delete from channel where idchannel = '"+convertedID+"'"; 
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
