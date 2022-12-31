package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.SystemDBUtil;
import user.user;

@WebServlet("/viewfeedbackServlet")
public class viewfeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		System.out.println("Called Servlet View Channel");
		System.out.println(pid);
        if(pid != null) {
        	
    		List<user> appointments=SystemDBUtil.getUserid(pid);
    		
    		request.setAttribute("appointments", appointments);
    		
        	request.getRequestDispatcher("viewfeedback.jsp").forward(request, response);
        	
        } else {
        	request.getRequestDispatcher("unsuccess.jsp").include(request, response);
        }
	}

}
