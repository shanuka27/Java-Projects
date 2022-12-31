package feedback;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.SystemDBUtil;
@WebServlet("/feedbackUpdateServlet")
public class feedbackUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fid = request.getParameter("fid");
		String pid = request.getParameter("pid");
		String title = request.getParameter("title");
		String feedback = request.getParameter("feedback");

		boolean isTrue;
		
		isTrue = SystemDBUtil.updatefeedback(fid, pid, title, feedback);
		
		if(isTrue == true) {
			request.setAttribute("pid", pid);
			RequestDispatcher dis = request.getRequestDispatcher("viewfeedback.jsp");
			dis.forward(request, response);
		}else {
			request.setAttribute("id", pid);
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}	
	}

}
