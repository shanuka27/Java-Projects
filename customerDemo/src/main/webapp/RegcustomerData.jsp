<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
  rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" 
 integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Cus Data</title>
</head>
<body>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>

<%
	String id = request.getParameter("userId");
	String driverName = "com.mysql.jdbc.Driver";
	String url ="jdbc:mysql://localhost:3380/gaming_site";
	String user = "root";
	String pass = "shanu123";

	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	
%>
	<h2 align="center"><font><strong>Registered Customers</strong></font></h2>
	<table align="center" cellpadding="10" cellspacing ="1"  
	 id="responsive-data-table" class="table dt-responsive nowrap" style="width:90%">

	<tr>

	</tr>
	<tr>
	<td><b>ID</b></td>
	<td><b>Name</b></td>
	<td><b>Email</b></td>
	<td><b>Phone</b></td>
	<td><b>UserName</b></td>
	<td style="display:none;"><b>Password</b></td>
	<td><b>View</b></td>
	<td><b>Delete</b></td>
	</tr>
<%
	try{ 
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement stmt = con.createStatement();
		String sql ="select * from customer";

		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
%>
	<tr>

	<td><%=rs.getString("id") %></td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getString("email") %></td>
	<td><%=rs.getString("phone") %></td>
	<td><%=rs.getString("userName") %></td>
	<td style = "display:none;"><%=rs.getString("password") %></td>
	<td><a href="#"><button type = "submit" class="btn btn-success" name="view" >View</button></a></td>
	<td><a href="#"><button type = "submit" class="btn btn-danger" name="view" >Delete</button></a></td>

	</tr>

<% 
	}

	} catch (Exception e) {
		e.printStackTrace();
	}
%>
</table>
</body>
</html>