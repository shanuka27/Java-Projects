<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
	<c:forEach var="cus" items="${cusFeedback}">	
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.Name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="message" value="${cus.message}"/>
	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
		<tr>
		<td>Customer Name</td>
		<td>${cus.Name}</td>
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
		<td>Customer Message</td>
		<td>${cus.message}</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>