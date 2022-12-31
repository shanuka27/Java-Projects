package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.SystemDBUtil;

@WebServlet("/addFeedbackServlet")
public class addFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		String topic = request.getParameter("topic");
		String feedback = request.getParameter("feedback");
		
		Boolean isTrue;
		
		isTrue = SystemDBUtil.addFeedBack(pid, topic, feedback);
		
		if(isTrue == true) {
			request.setAttribute("pid", pid);
			RequestDispatcher dis = request.getRequestDispatcher("viewfeedback.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
