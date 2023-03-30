package Servlet_package;

import java.io.IOException;
import java.util.ArrayList;

import Helper_package.Helper_class;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class showCreateTicket extends HttpServlet {
 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		ArrayList<String> arrlist=Helper_class.viewdetails();
		req.setAttribute("ulist", arrlist);
		RequestDispatcher rdp=req.getRequestDispatcher("CreateTicket.jsp");
		rdp.forward(req, resp);
	}
}
