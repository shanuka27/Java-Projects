package com.channel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class ChanneServlet
 */
@WebServlet("/ChanneServlet")
public class ChanneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ChanneServlet() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		String name = request.getParameter("pname");
		String age = request.getParameter("age");
		String did = request.getParameter("select");
		String date = request.getParameter("date");
		
		Boolean isTrue;
		
		isTrue = ChannelingDBUtil.addAppoinment(did,pid,date,name,age);
		
		if(isTrue == true) {
			List<Channel> appointments=ChannelingDBUtil.getAppointmentById(pid);
    		
    		request.setAttribute("appointments", appointments);
    		
        	request.getRequestDispatcher("channelView.jsp").forward(request, response);
        	
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
