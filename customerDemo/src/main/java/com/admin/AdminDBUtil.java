package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {

public static boolean validate(String UserName, String Password){
		
		boolean isSuccess = false;
		//create database connection
		
		String url ="jdbc:mysql://localhost:3380/gaming_site";
		String user = "root";
		String pass = "shanu123";
		
		//validate
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from admin where UserName = '"+UserName+"' and Password = '"+Password+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;		
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return isSuccess;
	}



public static List<Admin> getCustomer(String username){
	
	ArrayList<Admin> admin = new ArrayList<>();
	
	String url ="jdbc:mysql://localhost:3380/gaming_site";
	String user = "root";
	String pass = "shanu123";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		 
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement stmt = con.createStatement();
		
		String sql = "select * from admin where username='"+username+"'";
		ResultSet rs =stmt.executeQuery(sql); 
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String userName = rs.getString(5);
			String password = rs.getString(6);
			
			Admin cus = new Admin(id,name,email,phone,userName,password);
			admin.add(cus);
		}
		
	}catch(Exception e) {
		System.out.println(e);
	}
	
	return admin;
}}
