package Venue;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import Sponsores.DBConnect;

public class VenueDBUtil {
	

	    private static boolean isSuccess;
	    private static Connection con = null;
	    private static Statement stmt = null;  
	    //Statement cannot accept input parameters
	    //PreparedStatement can accept input parameters
	    //CallableStatement statements are mainly used to access database procedures
	    private static ResultSet rs = null;
	    //ResultSet object maintains a cursor that points to the current row in the result set

	public static boolean insertvenue(String venueName, String address, String capacity, String ameni) {
		// TODO Auto-generated method stub
		 boolean isSuccess = false;


	        try {
	            con = DBConnect.getConnection();
	            stmt = con.createStatement();

	            String sql = "insert into venue value(0,'"+venueName+"','"+address+"','"+capacity+"','"+ameni+"')";
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

	public static boolean updatevenue(String id, String venueName, String address, String capacity, String amei) {
		// TODO Auto-generated method stub
        try {

            con = DBConnect.getConnection();
            stmt = con.createStatement();
            System.out.print(id);
            String sql = "update venue set venuename = '"+venueName+"',address = '"+address+"', capacity = '"+capacity+"', amenities = '"+amei+"' where venueid = '"+id+"'";
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

	public static boolean deletevenue(String id) {
		// TODO Auto-generated method stub
		  try {
		        con = DBConnect.getConnection();
		        stmt = con.createStatement();
		        System.out.print(id);
		        String sql = "delete from venue where venueid = '"+id+"'";
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
