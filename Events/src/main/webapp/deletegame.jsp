<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
	  rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<title>Delete game</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
    String spoName = request.getParameter("spoName");
    String number = request.getParameter("number");
    String email = request.getParameter("email");
    String price = request.getParameter("price");
	%>
	
<h1 align="center">Delete Sponsore..</h1>
	<div align="center">
	<form action="DeletServlet" method="post" >
	     <table width="400px" height="400px" align="center" class="table table-striped">
	     
	     		<input type="hidden" name="id" value="<%=id%>">
                <tr>
                    <td align="center" scope="col" colspan="2">Sponsore Details</td>
                </tr>
                <tr>
                    <td>Sponsore Name </td>
                    <td>
                        <input type="text" name="name" value="<%=spoName%>" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Contact No  </td>
                    <td>
                        <input type="number" name="date" value="<%=number%>" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" name="file" value="<%=email%>" readonly>
                    </td>
                </tr>
                      <tr>
                    <td>Price </td>
                    <td>
                        <input type="text" name="price" value="<%=price%>" readonly>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Delete" class="btn btn-danger"></td>
                </tr>
            </table>
	</form> 
	</div>

</body>
</html>