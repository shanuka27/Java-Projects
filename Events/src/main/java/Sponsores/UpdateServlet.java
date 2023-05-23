package Sponsores;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    String id = request.getParameter("id");
	    String spoName = request.getParameter("name");
		String number = request.getParameter("number");
		String email = request.getParameter("email");
		String price = request.getParameter("price");
	    
	    boolean isTrue;
	    
	    isTrue = DBUtil.updateSponsore(id, spoName, number, email, price );
	    
	    if(isTrue == true) {
	        RequestDispatcher dis = request.getRequestDispatcher("Sponsores.jsp");
	        dis.forward(request, response);
	        
	    }else {
	        RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
            dis.forward(request, response);
	    
	}
	}

}
