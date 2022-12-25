package com.store;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
				 maxFileSize = 1024 * 1024 * 10, // 10MB
				 maxRequestSize = 1024 * 1024 * 50)
@WebServlet("/UpdateGameServlet")
public class UpdateGameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
		String id = request.getParameter("id"); 
        String gamename = request.getParameter("name");
        String date = request.getParameter("date");
        String price = request.getParameter("price");
        
        boolean isTrue;
                
		isTrue = storeDBUtil.updategame(id, gamename, date, price);
		
		if(isTrue == true) {
			List<Game> gameDetails = storeDBUtil.getGameDetails(id);
			request.setAttribute("gameDetails", gameDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("datagame.jsp");
			dis.forward(request, response);
		}else {
			List<Game> gameDetails = storeDBUtil.getGameDetails(id);
			request.setAttribute("gameDetails", gameDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}

	}
}