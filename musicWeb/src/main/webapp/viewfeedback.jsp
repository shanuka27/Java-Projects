<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	String pid = request.getParameter("pid");
	String driverName = "com.mysql.jdbc.Driver";

	String url = "jdbc:mysql://localhost:3380/music";
	String user = "root";
	String pass = "shanu123";
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
	
	<div class="px-4 py-5  text-center">
		<img class="d-block mx-auto mb-4" src="images/icons8-tasklist-96.png"
			alt="">
		<h1 class="display-5 fw-bold">YOUR FEEDBACKS</h1>
		<div class="col-lg-6 mx-auto">
			<p class="lead mb-4">Here You can view and edit your feedbacks.</p>
		</div>
	</div>
	
	<div id="mmenu_screen" class="container-fluid main_container d-flex">
		<div class="row flex-fill">
			<div class="col-sm-2 h-100">
			
			</div>
			<div class="col-sm-8 h-100">
				<div class="card">
					<div class="card-body">
<table class="table">
									<tr>
										<th scope="col">Feedback ID</th>
										<th scope="col">Feedback Title</th>
										<th scope="col">Content</th>
										<th scope="col"></th>
										<th scope="col"></th>
									</tr>
									<%
						try {
							connection = DriverManager.getConnection(url, user, pass);
							statement = connection.createStatement();
							String sql = "select * from music.feedback where userid = '" + pid + "'";
							System.out.println(pid);
							System.out.println("User ID");
							resultSet = statement.executeQuery(sql);
							while (resultSet.next()) {
						%>

									<tr>
										<td class="align-middle"><%=resultSet.getString("idfeedback")%></td>
										<td class="align-middle"><%=resultSet.getString("title")%></td>
										<td class="align-middle"><%=resultSet.getString("feedback")%></td>
										
										<td class="align-middle"><c:url value="updatefeedback.jsp" var="edit">
												<c:param name="fid"
													value='<%=resultSet.getString("idfeedback")%>'></c:param>
												<c:param name="title"
													value='<%=resultSet.getString("title")%>'></c:param>
												<c:param name="feedback"
													value='<%=resultSet.getString("feedback")%>'></c:param>
												
												<c:param name="pid"
													value='<%=resultSet.getString("userid")%>'></c:param>
											</c:url> <a href="${edit}"> <input class="btn btn-primary" type="button" name="EDIT" value="Update">
										</a></td>
										
										<td><form action="deletefeedback" method="POST">
										<div class="mb-3" Style = "display:none;">
											<label for="exampleInputEmail1" class="form-label"> feed
												ID</label><br> <input class="form-control" type="text"
												value='<%=resultSet.getString("idfeedback")%>' name="fid" readonly>
										</div>
										
										<div class="mb-3" Style = "display:none;">
											<label for="exampleInputEmail1" class="form-label">
												ID</label><br> <input class="form-control" type="text"
												value='<%=resultSet.getString("userid")%>' name="pid" readonly>
										</div>
										<input class="btn btn-outline-danger" type="submit"
												name="submit" value="DELETE">
										</form>	
										</td>

									</tr>

									<%
						}

						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
								</table>

	</div>
				</div>
			</div>
			<div class="col-sm-2 mmenu_screen--direktaction flex-fill">
				
			</div>
		</div>
	</div>

</body>
</html>