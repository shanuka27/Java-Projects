package Venue;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddVenueServlet")
public class AddVenueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String venueName = request.getParameter("name");
		String address = request.getParameter("address");
		String capacity = request.getParameter("cap");
		String ameni = request.getParameter("ame");
		
		boolean isTrue;
		
		isTrue = VenueDBUtil.insertvenue(venueName, address, capacity, ameni);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("Venues.jsp");
			dis1.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
