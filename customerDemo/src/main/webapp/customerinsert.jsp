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
<title>Register</title>
<style type="text/css">
	body{
		padding-top: 150px;
		background: powderblue;
		background-image: url(images/banner-bg.png);
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
	<div class="container">
		<form class="form-signup" action="insert" method="post">
			<h2>REGISTER</h2>
			<div class="form-group">
				Name<input type="text" name="name" class="form-control">
			</div>
			<div class="form-group">
				Email<input type="text" name="email" class="form-control">
			</div>
			<div class="form-group">
				Phone Number<input type="text" name="phone" class="form-control">
			</div>
			<div class="form-group">
				User Name<input type="text" name="uid" class="form-control">
			</div>
			<div class="form-group">
				Password<input type="Password" name="psw" class="form-control">
			</div><br>
			<div class="form-group">
				<label>I already have an account <a href="login.jsp"> Log In!</a></label>
			</div><br>
				<input type="submit" name="submit" class="btn btn-primary btn-block" value="Register">			
		</form>
	</div>
</body>
</html>