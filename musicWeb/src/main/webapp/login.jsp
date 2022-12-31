<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">

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

  <style>
		html,
		body {
		  height: 100%;
		}
		
		body {
		  display: flex;
		  align-items: center;
		  padding-top: 40px;
		  padding-bottom: 40px;
		  background-color: #f5f5f5;
		  flex-direction: column;
		}
		
		.form-signin {
		  width: 100%;
		  max-width: 330px;
		  padding: 15px;
		  margin:0px;
		}
		
		.form-signin .checkbox {
		  font-weight: 400;
		}
		
		.form-signin .form-floating:focus-within {
		  z-index: 2;
		}
		
		.form-signin input[type="email"] {
		  margin-bottom: -1px;
		  border-bottom-right-radius: 0;
		  border-bottom-left-radius: 0;
		}
		
		.form-signin input[type="password"] {
		  margin-bottom: 10px;
		  border-top-left-radius: 0;
		  border-top-right-radius: 0;
		}
		
		

    </style>
	
</head>
<body>

	<div class="px-4 py-5  text-center">
		<img class="d-block mx-auto mb-4" src="images/icons8-tasklist-96.png"
			alt="">
		<h1 class="display-5 fw-bold">Music Platform</h1>
		<div class="col-lg-12 mx-auto">
			<p class="lead mb-4">Welcome.</p>
		</div>
	</div>

<main class="form-signin">
<div class="card">
		<div class="card-body">
  <form action="login" method = "POST">
    <h1 class="h3 mb-3 fw-normal" style = "align-items: center;">Please Log in to continue</h1>

    <div class="form-floating">
      <input type="text" name = "uid" class="form-control" id="floatingInput" placeholder="" style="
    margin-top: 10px;
">
      <label for="floatingInput">User Name</label>
    </div>
    <div class="form-floating">
      <input type="password" name = "pass"  class="form-control" id="floatingPassword" placeholder="Password" style="
    margin-top: 10px;
">
      <label for="floatingPassword">Password</label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">LOG IN</button>
  </form>
  </div>
	</div>
	
  
  <br>
  
<a href="register.jsp">
<input class="w-100 btn btn-lg btn btn-outline-primary"type="button" name="update" value="Create New Account">
</a>
</main>


<!-- 	<form action="login" method = "POST">
		User name <input type = "text" name = "uid" placeholder = "Username here"> <br>
		Password <input type = "password" name = "pass" placeholder = "Password here"> <br>
		<input type = "submit" name = "submit" value = "Login">
	</form> -->

</body>
</html>