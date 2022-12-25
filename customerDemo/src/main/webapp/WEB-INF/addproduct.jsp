<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
</head>
<body>
	<h1 align="center">Add Product..</h1>
	<div align="center">
	<form action="AddProductServlet" method="post" enctype="multipart/form-data">
	     <table width="400px" align="center" border=2>
                <tr>
                    <td align="center" colspan="2">Product Details</td>
                </tr>
                <tr>
                    <td>Product Name </td>
                    <td>
                        <input type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <td>Description </td>
                    <td>
                        <input type="text" name="description">
                    </td>
                </tr>
                <tr>
                    <td>Thumbnail </td>
                    <td>
                        <input type="file" name="file">
                    </td>
                </tr>
                      <tr>
                    <td>Price </td>
                    <td>
                        <input type="text" name="price">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Add Product"></td>
                </tr>
            </table>
	</form> 
	</div>
</body>
</html>