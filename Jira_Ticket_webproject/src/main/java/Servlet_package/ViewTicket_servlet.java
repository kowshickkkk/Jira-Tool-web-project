package Servlet_package;

import java.io.IOException;
import java.util.ArrayList;

import Helper_package.Helper_class;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Jiraticket_view;

public class ViewTicket_servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		resp.setContentType("text/html");		
		ArrayList<Jiraticket_view> arr=Helper_class.ViewAllTicket();
		
		req.setAttribute("Jiraticket", arr);
		
		RequestDispatcher rdp=req.getRequestDispatcher("ViewTicket.jsp");
		
		rdp.forward(req, resp);
	}
}
