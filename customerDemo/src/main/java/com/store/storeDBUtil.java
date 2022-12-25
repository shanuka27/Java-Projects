package com.store;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

import com.customer.Customer;

public class storeDBUtil {
	
public static boolean updategame(String id,String gamename,String date, String price) {
		
		boolean isSuccess = false;
		
		String url ="jdbc:mysql://localhost:3380/gaming_site";
		String user = "root";
		String pass = "shanu123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			int parseId = Integer.parseInt(id);
			
			String sql = "update store set game_name='"+gamename+"',gdate='"+date+"',gprice='"+price+"'"
					+ "where gameid='"+parseId+"'";
			
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



public static List<Game> getGameDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Game> game = new ArrayList<>();
	
	try {
		
		String url ="jdbc:mysql://localhost:3380/gaming_site";
		String user = "root";
		String pass = "shanu123";
		
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement stmt = con.createStatement();
		
		String sql = "select * from store where gameid ='"+convertedID+"'";
	     ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			 int id = rs.getInt(1);
			 String gamename = rs.getString(2); 
			 String date = rs.getString(3);
			 String fileName = rs.getString(4);
			 String price = rs.getString(5);
			 
			 Game g = new Game(id, gamename, date, fileName, price);		
			 game.add(g);
		}		
	}catch(Exception e) {
		System.out.println(e);
	}
	return game;
}



public static boolean deletegame(String id) {

	boolean isSuccess = false;
	
	int convId = Integer.parseInt(id);
	try {
		String url ="jdbc:mysql://localhost:3380/gaming_site";
		String user = "root";
		String pass = "shanu123";
		
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement stmt = con.createStatement();
		
		String sql = "delete from store where gameid='"+convId+"'";
		
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
