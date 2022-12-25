package com.store;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.Customer;
import com.customer.customerDBUtil;


@WebServlet("/DeleteGameServlet")
public class DeleteGameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id"); 
		
		boolean isTrue;
		
		isTrue = storeDBUtil.deletegame(id);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("datagame.jsp");
			dis.forward(request, response);
		}else {
			
//			List<Game> cusDetails = storeDBUtil.getgameDetails(id);
//			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
