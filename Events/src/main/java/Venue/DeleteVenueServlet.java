package Venue;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteVenueServlet")
public class DeleteVenueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	      String id = request.getParameter("id");


	        boolean isTrue;

	        isTrue = VenueDBUtil.deletevenue(id);

	        if(isTrue == true) {
	            RequestDispatcher dis = request.getRequestDispatcher("Venues.jsp");
	            dis.forward(request, response);

	        }else {
	            RequestDispatcher dis = request.getRequestDispatcher("unsuccessful.jsp");
	            dis.forward(request, response);
	        }
	}

}
