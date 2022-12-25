<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
<title>My Account</title>
<style type="text/css">
	body{
		padding-top: 250px;
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
	<div class="container">
		<form class="form-signup" action="prof" method="post">
			<div class="form-group">
				Enter User Name:<input type = "text" name ="uid" class="form-control"><br/>
			</div>
			<div class="form-group">
				Enter Password:<input type = "password" name ="pass" class="form-control"><br/>
			</div>
			<div align = "center">
				<input type = "submit" name ="submit" class="btn btn-danger btn-block" value = "My Account">
			</div>
		</form>
	</div>


</body>
</html>