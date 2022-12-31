package user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SystemDBUtil {
	
private static boolean isSuccess;
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static Boolean register(String name, String email, String username, String password) {
		boolean isSuccess = false;
		try {
	
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "insert into user values(0,'"+name+"','"+email+"','"+username+"','"+password+"') ";
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
	
public static boolean validate(String userName, String password) {
		
		boolean isSuccess = false;

		try {
		
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from user where username = '"+ userName +"' and password = '"+ password +"'";
			rs = stmt.executeQuery(sql);
						
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

public static List<user> getUser(String userName) {
	ArrayList<user> cus = new ArrayList<>();

	try {
		//DB connect part -------------------------------------------------------------------------------
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "select * from user where username = '"+ userName +"'";
		rs = stmt.executeQuery(sql);
					
		while(rs.next()) {
			int id = rs.getInt("iduser");
			String name = rs.getString("name");
			String email = rs.getString("email");
			String usernameU = rs.getString("username");
			String passU = rs.getString("password");
			
			user u = new user(id,name,email,usernameU,passU);
			cus.add(u);
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return cus;
}

public static Boolean addFeedBack(String uid, String topic, String feedback) {
boolean isSuccess = false;
	
	try {
		//DB connect part -------------------------------------------------------------------------------
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		//------------------------------------------------------------------------------------------------------
		
		String sql = "insert into feedback values(0,'"+topic+"','"+feedback+"','"+uid+"') ";
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
	int convertedID = Integer.parseInt(id);
	
	try {
		//DB connect part -------------------------------------------------------------------------------
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "Delete from feedback where idfeedback = '"+convertedID+"'"; 
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

public static List<user> getUserid(String uid) {
	ArrayList<user> cus = new ArrayList<>();

	try {
		//DB connect part -------------------------------------------------------------------------------
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "select * from user where username = '"+ uid +"'";
		rs = stmt.executeQuery(sql);
					
		while(rs.next()) {
			int id = rs.getInt("iduser");
			String name = rs.getString("name");
			String email = rs.getString("email");
			String usernameU = rs.getString("username");
			String passU = rs.getString("password");
			
			user u = new user(id,name,email,usernameU,passU);
			cus.add(u);
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return cus;
}

public static boolean updatefeedback(String fid, String pid, String title, String feedback) {
	boolean isSuccess = false;
	
	try {
		//DB connect part -------------------------------------------------------------------------------
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		//------------------------------------------------------------------------------------------------------
		
		String sql = "update music.feedback set feedback = '"+feedback+"', title = '"+title+"' where idfeedback = '"+fid+"'";
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

}
