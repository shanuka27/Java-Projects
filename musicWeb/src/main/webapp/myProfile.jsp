<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyProfile</title>

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
<body style="padding-left: 80px; padding-right: 80px; padding-bottom: 20px;">

	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	
		
	<table>
	<c:forEach var="cus" items="${cusDetails}">
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="username" value="${cus.userName}"/>
	</c:forEach>
	</table>

	
<!-- Database Connection -->

	<%
	String id = request.getParameter("id");
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
	ResultSet resultSet = null;
	ResultSet resultSet2 = null;
	ResultSet resultSet3 = null;
	%>
	
<!-- Header Section -->

	<div class="px-4 py-5  text-center">
		<img class="d-block mx-auto mb-4" src="images/icons8-health-64.png"
			alt="">
		<h1 class="display-5 fw-bold">MY PROFILE</h1>
		<div class="col-lg-6 mx-auto">
			<p class="lead mb-4">Welcome ${username}.</p>
			<div id="emailHelp" class="form-text">Email Address : ${email}</div>
			<div id="emailHelp" class="form-text">Full Name : ${username}</div>
		</div>
	</div>


<!-- Channeling Section -->
	<div class="card">
		<div class="card-body">

			<div id="mmenu_screen" class="container-fluid main_container d-flex">
				<div class="row flex-fill">
					<div class="col-sm-4 h-100"
						style="padding-left: 0px; padding-right: 0px;">
						<div class="card">
							<div class="card-body">
								<form action="addFeedback" method="POST">

									<label class="form-label"><b>SEND FEEDBACK</b></label>

									<div  class="mb-3">
										<label for="exampleInputEmail1" class="form-label">user
											ID</label><br> <input class="form-control" type="text"
											value='${id}' name="pid" readonly>
									</div>

									<div class="mb-3">
										<label class="form-label">Topic</label> <input
											class="form-control" type="text" name="topic" Style=""
											placeholder="Type the topic of the feedback">
									</div>

									<div class="mb-3">
										<label class="form-label">FeedBack</label> <input
											class="form-control" type="text" name="feedback"
											placeholder="Type Your FeedBack here.." style="height: 64px;">
									</div>


									<input class="w-100 btn btn-primary" type="submit"
										name="SEND" value="SEND FEEDBACK">
								</form>

							</div>
						</div>
					</div>

					<div class="col-sm-4 mmenu_screen--direktaction flex-fill">
						<div class="card">
							<div class="card-body">
							
							
							<div class="px-4 py-5 text-center">
							<img class="d-block mx-auto mb-4"
								src="images/13961232_5385893.jpg" alt="" width="auto"
								height="250">
							<h1 class="display-5 fw-bold">Feedbacks</h1>
							<div class="col-lg-6 mx-auto">
								<div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
									<form action="viewfeedback" method="POST">
										<div class="mb-3" Style="display: none;">
											<label for="exampleInputEmail1" class="form-label">Patient
												ID</label><br> <input class="form-control" type="text"
												value='${id}' name="pid" readonly>
										</div>

										<input class="btn btn-warning  px-4 gap-3" type="submit"
											name="submit" value="View Feedbacks">
									</form>
								</div>
							</div>
						</div>
						
						
							
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>
	<br>


</body>
</html>