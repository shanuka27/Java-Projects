<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
	  rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Update venue</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
	    String venueName = request.getParameter("venueName");
	    String address = request.getParameter("address");
	    String capacity = request.getParameter("capacity");
	    String amei = request.getParameter("amei");
	%>
	
<h1 align="center">Update Venue..</h1>
	<div align="center">
	<form action="UpdateVenueServlet" method="post" >
	     <table width="400px" align="center" height="400px" class="table table-striped">
	     
	     <input type="hidden" name="id" value="<%=id%>">
                <tr>
                    <td align="center" colspan="2">Venue Details</td>
                </tr>
                <tr>
                    <td>Venue Name </td>
                    <td>
                        <input type="text" name="name" value="<%=venueName%>">
                    </td>
                </tr>
                <tr>
                    <td>Address </td>
                    <td>
                        <input type="text" name="address" value="<%=address%>">
                    </td>
                </tr>
                <tr>
                    <td>Capacity</td>
                    <td>
                        <input type="text" name="cap" value="<%=capacity%>">
                    </td>
                </tr>
                      <tr>
                    <td>Amenities</td>
                    <td>
                        <input type="text" name="ame" value="<%=amei%>">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="update" class="btn btn-primary"></td>
                </tr>
            </table>
	</form> 
	</div>
</body>
</html>