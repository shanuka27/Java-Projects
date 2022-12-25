package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class customerDBUtil {

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
			
			String sql = "select * from customer where UserName = '"+UserName+"' and Password = '"+Password+"'";
			
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
	
	public static List<Customer> getCustomer(String username){
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		String url ="jdbc:mysql://localhost:3380/gaming_site";
		String user = "root";
		String pass = "shanu123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from customer where username='"+username+"'";
			ResultSet rs =stmt.executeQuery(sql); 
			
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userName = rs.getString(5);
				String password = rs.getString(6);
				
				Customer cus = new Customer(id,name,email,phone,userName,password);
				customer.add(cus);
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return customer;
	}
	
	public static boolean insertcustomer(String name,String email,String phone,String username,String password) {
		
		boolean isSuccess = false;
		
		String url ="jdbc:mysql://localhost:3380/gaming_site";
		String user = "root";
		String pass = "shanu123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into customer values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
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
	
	
	public static boolean updatecustomer(String id,String name,String email,String phone, String username,String password) {
		
		boolean isSuccess = false;
		
		String url ="jdbc:mysql://localhost:3380/gaming_site";
		String user = "root";
		String pass = "shanu123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
					+ "where id='"+id+"'";
			
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
	
	public static List<Customer> getCustomerDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			
			String url ="jdbc:mysql://localhost:3380/gaming_site";
			String user = "root";
			String pass = "shanu123";
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from customer where id ='"+convertedID+"'";
		     ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				 int id = rs.getInt(1);
				 String name = rs.getString(2); 
				 String email = rs.getString(3);
				 String phone = rs.getString(4);
				 String username = rs.getString(5);
				 String password = rs.getString(6);
				 
				 Customer c = new Customer(id,name,email,phone,username,password);		
				 cus.add(c);
			}		
		}catch(Exception e) {
			System.out.println(e);
		}
		return cus;
	}
	
	public static boolean deletecustomer(String id) {
		
		boolean isSuccess = false;

		int convId = Integer.parseInt(id);
		
		try {
			String url ="jdbc:mysql://localhost:3380/gaming_site";
			String user = "root";
			String pass = "shanu123";
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "delete from customer where id='"+convId+"'";
			
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

	
}
