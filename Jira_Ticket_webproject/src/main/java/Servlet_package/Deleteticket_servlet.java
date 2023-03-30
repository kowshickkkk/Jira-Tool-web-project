package Servlet_package;

import java.io.IOException;

import Helper_package.Helper_class;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//@WebServlet("/Delete")
public class Deleteticket_servlet extends HttpServlet {
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		int id=0;
	    id=Integer.parseInt(req.getParameter("id"));
	    String mg="";
	    boolean result=false;
	    if(id!=0)
	    	result=Helper_class.deleteticket(id);
	    
	    RequestDispatcher rdp=req.getRequestDispatcher("/view");
	    
	    if(result)
	    	req.setAttribute("mg", "*_Deleted Sucessfull_*");
	    else
		req.setAttribute("mg", "**_Deleted Sucessfull_**");
	    
		rdp.include(req, resp);
	}
}
