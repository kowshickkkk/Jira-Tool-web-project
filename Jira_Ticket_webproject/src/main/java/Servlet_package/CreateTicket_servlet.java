package Servlet_package;

import java.io.IOException;

import Helper_package.Helper_class;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CreateTicket_servlet extends HttpServlet {
	boolean result;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		String assignee=req.getParameter("AssigneeName");
		String reportee=req.getParameter("ReporterName");
		String problem=req.getParameter("Problem");
		String notify=req.getParameter("notify");
		String status=req.getParameter("status");
		
		
		boolean result= Helper_class.createTicket(assignee, reportee, problem, notify, status);
		RequestDispatcher dp = req.getRequestDispatcher("/showCreateTicket");
		
		if(result) {
			req.setAttribute("notify", "Ticket created successfully Go to Home page");			
			
		}else
		{
			req.setAttribute("notify", "something went wrong try again please!");
		}
			
		dp.forward(req, resp);	
		
	}

}
