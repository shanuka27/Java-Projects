package Venue;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

    private static String url = "jdbc:mysql://localhost:3306/eventmanagement";
    private static String userName = "root";
    private static String password = "shanu123";
    private static Connection con; //con is a connection type object
    
    public static Connection getConnection() { 
        //getConnection() method of DriverManager class is used to establish connection with the database.
        
        try { //  Block of code to try
            
            //to register a driver - Java's Class.forName()
            //method, to dynamically load the driver's class file into memory
            
            Class.forName("com.mysql.jdbc.Driver");            
   
            con = DriverManager.getConnection(url, userName, password);
            
            
        }
        catch(Exception e) { //  Block of code to handle errors
            
            //e is a reference to the instance of the Exception
            
            System.out.println("Database connection failed");
            
        }
        
        return con;
    }
}
