<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous">
</script>

</head>
<body>

	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>

	<%
	String driverName = "com.mysql.jdbc.Driver";

	String url = "jdbc:mysql://localhost:3306/music";
	String user = "root";
	String pass = "root";
	Connection con;
	//String mid = ;

	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	Statement statement2 = null;
	ResultSet resultSet = null;
	ResultSet resultSet2 = null;
	%>

	<%
	String fid = request.getParameter("fid");
	String pid = request.getParameter("pid");
	String title = request.getParameter("title");
	String feedback = request.getParameter("feedback");

	%>
	
	<div class="px-4 py-5  text-center">
		<img class="d-block mx-auto mb-4" src="images/icons8-health-64.png"
			alt="">
		<h1 class="display-5 fw-bold">EDIT FEEDBACK</h1>
	</div>
	
	<div id="mmenu_screen" class="container-fluid main_container d-flex">
		<div class="row flex-fill">
			<div class="col-sm-4 h-100">
				
			</div>
			<div class="col-sm-4 h-100">

	<div class="card">
		<div class="card-body">
			<form action="feedbackUpdate" method="POST">

				<div class="mb-3" Style = "display:none;">
					<label for="exampleInputEmail1" class="form-label">User ID</label><br> 
					<input class="form-control" type="text" value="<%=pid %>" name="pid" readonly>
				</div>
				
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Feedback ID</label><br> 
					<input class="form-control" type="text" value="<%=fid %>" name="fid" readonly>
				</div>

				<div class="mb-3">
					<label class="form-label">Title</label> 
					<input
						class="form-control" type="text" name="title" Style="" value='<%=title %>'>
				</div>

				<div class="mb-3">
					<label class="form-label">Feedback</label> 
					<input
						class="form-control" type="text" name="feedback" value='<%=feedback %>'>
				</div>

				<input class="w-100 btn btn-primary" type="submit" name="submit"
					value="Done">
			</form>

		</div>
	</div>


			</div>
			<div class="col-sm-4 mmenu_screen--direktaction flex-fill">
				
			</div>
		</div>
	</div>
</body>
</html>