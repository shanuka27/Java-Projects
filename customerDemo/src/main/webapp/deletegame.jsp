<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete game</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
	    String gamename = request.getParameter("gamename");
	    String date = request.getParameter("date");
	    String filename = request.getParameter("filename");
	    String price = request.getParameter("price");
	%>
	
<h1 align="center">Delete Game..</h1>
	<div align="center">
	<form action="Delgame" method="post" enctype="multipart/form-data">
	     <table width="400px" align="center" border=2>
	     
	     <input type="hidden" name="id" value="<%=id%>">
                <tr>
                    <td align="center" colspan="2">Game Details</td>
                </tr>
                <tr>
                    <td>Game Name </td>
                    <td>
                        <input type="text" name="name" value="<%=gamename%>" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Date </td>
                    <td>
                        <input type="date" name="date" value="<%=date%>" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Thumbnail</td>
                    <td>
                        <input type="file" name="file" value="<%=filename%>" readonly>
                    </td>
                    <td><img src="gameimage/<%=filename%>" width="100" height="100" alt =" "/></td>
                </tr>
                      <tr>
                    <td>Price </td>
                    <td>
                        <input type="text" name="price" value="<%=price%>" readonly>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Delete"></td>
                </tr>
            </table>
	</form> 
	</div>

</body>
</html>