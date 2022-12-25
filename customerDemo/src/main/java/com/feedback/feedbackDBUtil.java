package com.feedback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.feedback.feedbackDBUtil;



public class feedbackDBUtil {

	
	public static boolean insertfeedback(String Name, String email, String phone, String message) {
		
		boolean isSuccess = false;
		
		String url ="jdbc:mysql://localhost:3380/gaming_site";
		String user = "root";
		String pass = "shanu123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into feedback values(0,'"+Name+"','"+email+"','"+phone+"','"+message+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return isSuccess;
	}
	
	
	public static List<feedback> getfeedback(String name){
		
		ArrayList<feedback> feedback = new ArrayList<>();
		
		String url ="jdbc:mysql://localhost:3380/gaming_site";
		String user = "root";
		String pass = "shanu123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from feedback where name='"+name+"'";
			ResultSet rs =stmt.executeQuery(sql); 
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String Name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String message = rs.getString(5);
				
				feedback cus = new feedback(id,Name,email,phone,message);
				feedback.add(cus);
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return feedback;
	}

}
