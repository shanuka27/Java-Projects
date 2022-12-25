package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServletNew")
public class LoginServletNew extends HttpServlet {
	private static final long serialVersionUID = 1L; 
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String UserName = request.getParameter("uid");
		String Password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = customerDBUtil.validate(UserName,Password);
		
		if(isTrue == true){
			List<Customer> cusDetails = customerDBUtil.getCustomer(UserName);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("home1.jsp");
			dis.forward(request, response);
		}else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your username or password is incorrect')");
			out.println("location = 'login.jsp'");
			out.println("</script>");
		}
		
		
		
		
		
	}

}
