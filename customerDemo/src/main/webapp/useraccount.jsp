<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta charset="UTF-8">
<title>My Account</title>
</head>
<body>
<br><br><br><br><br>
<div>
	<h1 align="center">My Details</h1>
	<table class="table table-striped" align="center" cellpadding="5" cellspacing="5" style="width:80%;">
	<c:forEach var="cus" items="${cusDetails}">	
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
		<tr>
		<td>Customer Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Customer phone</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Customer UserName</td>
		<td>${cus.userName}</td>
	</tr>
	<tr>
		<td>Customer Password</td>
		<td>${cus.password}</td>
	</tr>
	</c:forEach>
	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<div align ="center">
		<a href="${cusupdate}">
			<input type="button" name ="update" value="update" class="btn btn-danger">
		</a>
	
		<a href="${cusdelete}">
			<input type ="button" name ="delete" value="delete" class="btn btn-primary">
		</a>
	</div>
</div>
	
	
	
</body>
</html>