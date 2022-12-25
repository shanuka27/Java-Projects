package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String UserName = request.getParameter("uid");
		String Password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.validate(UserName,Password);
		
		if(isTrue == true){
			List<Admin> AdminDetails = AdminDBUtil.getCustomer(UserName);
			request.setAttribute("AdminDetails", AdminDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("home3.jsp");
			dis.forward(request, response);
		}else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your username or password is incorrect')");
			out.println("location = 'adminlogin.jsp'");
			out.println("</script>");
		}
		
	}

}
