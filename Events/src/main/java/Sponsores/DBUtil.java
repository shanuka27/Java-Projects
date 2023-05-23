package Sponsores;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DBUtil {
	
	   private static boolean isSuccess;
	    private static Connection con = null;
	    private static Statement stmt = null;  
	    //Statement cannot accept input parameters
	    //PreparedStatement can accept input parameters
	    //CallableStatement statements are mainly used to access database procedures
	    private static ResultSet rs = null;
	    //ResultSet object maintains a cursor that points to the current row in the result set
	    
//	    public static boolean insertsponsore(String spoName, String number, String email, String price) {
//	    	// TODO Auto-generated method stub
//	    	return false;
//	    }
	
	 public static boolean insertsponsore(String spoName, String number, String email, String price) {

	        boolean isSuccess = false;


	        try {
	            con = DBConnect.getConnection();
	            stmt = con.createStatement();

	            String sql = "insert into sponsors value(0,'"+spoName+"','"+number+"','"+email+"','"+price+"')";
	            int rs =stmt.executeUpdate(sql);
	            //execute - any kind of sql statements
	            //executeUpdate - returns an int value which represents the number of rows affected
	            //executeQuery - retrieve data from database (only for SELECT query)

	            if(rs > 0) {
	                isSuccess = true;
	            }else {
	                isSuccess = false;
	            }

	        }
	        catch(Exception e) {
	            e.printStackTrace();
	        }
	        finally {
	            if (rs != null) {
	                try {
	                    rs.close();
	                } catch (Exception e) { 
	                    e.printStackTrace();
	                }
	            }
	            if (con != null) {
	                try {
	                    con.close();
	                } catch (Exception e) { 
	                    e.printStackTrace();
	                }
	            }
	        }


	        return isSuccess;


	    }	
	 

	    public static boolean updateSponsore(String id, String spoName, String number, String email, String price) {

	        try {

	            con = DBConnect.getConnection();
	            stmt = con.createStatement();
	            System.out.print(id);
	            String sql = "update sponsors set sponsorName = '"+spoName+"',contactNo = '"+number+"', email = '"+email+"', Amount = '"+price+"' where sponsorid = '"+id+"'";
	            int rs =stmt.executeUpdate(sql);

	            if(rs > 0) {
	                isSuccess = true;
	            }else {
	                isSuccess = false;
	            }


	        }
	        catch(Exception e) {
	            e.printStackTrace();
	        }
	        finally {
	            if (rs != null) {
	                try {
	                    rs.close();
	                } catch (Exception e) { 
	                    e.printStackTrace();
	                }
	            }
	            if (con != null) {
	                try {
	                    con.close();
	                } catch (Exception e) { 
	                    e.printStackTrace();
	                }
	            }
	        }

	        return isSuccess;
	    }


public static List<Sponsore> getSponsoreDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Sponsore> sponsore = new ArrayList<>();
	
	try {
		
		String url ="jdbc:mysql://localhost:3306/eventmanagement";
		String user = "root";
		String pass = "shanu123";
		
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement stmt = con.createStatement();
		
		String sql = "select * from sponsors where sponsorid ='"+convertedID+"'";
	     ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			 int id = rs.getInt(1);
			 String sponame = rs.getString(2); 
			 String conNo = rs.getString(3);
			 String email = rs.getString(4);
			 String price = rs.getString(5);
			 
			 Sponsore g = new Sponsore(id, sponame, conNo, email, price);		
			 sponsore.add(g);
		}		
	}catch(Exception e) {
		System.out.println(e);
	}
	return sponsore;
}



public static boolean deleteSponsore(String id) {

    try {
        con = DBConnect.getConnection();
        stmt = con.createStatement();
        System.out.print(id);
        String sql = "delete from sponsors where sponsorid = '"+id+"'";
        int rs =stmt.executeUpdate(sql);

        if(rs > 0) {
            isSuccess = true;
        }else {
            isSuccess = false;
        }

    }
    catch(Exception e) {
        e.printStackTrace();
    }
    finally {
        if (rs != null) {
            try {
                rs.close();
            } catch (Exception e) { 
                e.printStackTrace();
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (Exception e) { 
                e.printStackTrace();
            }
        }
    }

    return isSuccess;
}




}
