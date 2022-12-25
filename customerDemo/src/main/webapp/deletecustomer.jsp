<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
  rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" 
 integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<title>Delete customer</title>
<style type="text/css">
	body{
		padding-top: 150px;
		background: powderblue;
		background-image: url(images/);
	}
	.form-signup{
		margin: auto;
		max-width: 500px;
		background-color: white;
		padding: 15px;
		border-radius: 10px 10px 10px 10px; 
		
	}
	.form-signup h2{
		text-align: center;
	}
</style>
</head>
<body>
    <%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	
	<div class="container">
	
	<form class="form-signup" action="delete" method="post">
	<h1>Customer Account Delete</h1>
	<div class="form-group">		
		Customer ID<input type ="text" name="cusid" value="<%=id%>" class="form-control" readonly>
	</div>
	<div class="form-group">
		Name<input type ="text" name="name" value="<%=name%>" class="form-control" readonly>
	</div>
	<div class="form-group">
		Email<input type ="text" name="email" value="<%=email%>" class="form-control" readonly>
	</div>
	<div class="form-group">
		Phone number<input type ="text" name="phone" value="<%=phone%>"  class="form-control" readonly>
	</div>
	<div class="form-group">
		User Name<input type ="text" name="uname" value="<%=username%>"  class="form-control" readonly>
	</div>	<br>
		<input type ="submit" name="submit" value="Delete" class="btn btn-danger"><br>
	</form>
	</div>
</body>
</html>