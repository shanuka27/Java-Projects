package Sponsores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        
		String spoName = request.getParameter("name");
		String number = request.getParameter("number");
		String email = request.getParameter("email");
		String price = request.getParameter("price");
		
		boolean isTrue;
		
		isTrue = DBUtil.insertsponsore(spoName, number, email, price);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("Sponsores.jsp");
			dis1.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
