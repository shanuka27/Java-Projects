package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userLoginServlet")
public class userLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		boolean isTrue;
		isTrue = SystemDBUtil.validate(userName, password);
		if(isTrue == true) {
			List<user> cusDetails = SystemDBUtil.getUser(userName);
			request.setAttribute("cusDetails", cusDetails);
			  
			RequestDispatcher dis = request.getRequestDispatcher("myProfile.jsp");
			dis.forward(request, response);
		}else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your username or password is incorrect')");
			out.println("location = 'login.jsp'");
			out.println("</script>");
		}
	}

}
