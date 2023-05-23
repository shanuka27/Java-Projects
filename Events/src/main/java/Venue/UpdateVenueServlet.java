package Venue;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UpdateVenueServlet")
public class UpdateVenueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    String id = request.getParameter("id");
	    String venueName = request.getParameter("name");
		String address = request.getParameter("address");
		String capacity = request.getParameter("cap");
		String amei = request.getParameter("ame");
	    
	    boolean isTrue;
	    
	    isTrue = VenueDBUtil.updatevenue(id, venueName, address, capacity, amei );
	    
	    if(isTrue == true) {
	        RequestDispatcher dis = request.getRequestDispatcher("Venues.jsp");
	        dis.forward(request, response);
	        
	    }else {
	        RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
            dis.forward(request, response);
	    
	}
	}

}
