package com.product;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

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
@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String id = request.getParameter("id"); 
        String productname = request.getParameter("name");
        String description = request.getParameter("description");
        Part part = request.getPart("file");
        String fileName = extractFileName(part);
        String savePath = "C:\\Users\\Shanuka\\eclipse-workspace\\customerDemo\\src\\main\\webapp\\productimage" + File.separator + fileName;
        File fileSaveDir = new File(savePath);
        part.write(savePath + File.separator);
        String price = request.getParameter("price");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3380/gaming_site", "root", "shanu123");
            PreparedStatement pst = con.prepareStatement("insert into product values(?,?,?,?,?)");
			pst.setString(1, id); 
            pst.setString(2, productname);
            pst.setString(3, description);
            pst.setString(4, fileName);
            pst.setString(5, price);
            pst.executeUpdate();
            System.out.println("<center><h1>Image inserted Succesfully......</h1></center>");
            RequestDispatcher dis = request.getRequestDispatcher("dataproduct.jsp");
			dis.forward(request, response);
			
        } catch (Exception e) {
            System.out.println(e);
        }
        
        
	}
	
    private String extractFileName(Part part) {//This method will print the file name.
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

}
