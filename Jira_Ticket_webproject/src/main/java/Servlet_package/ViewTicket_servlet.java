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
		
		ArrayList<Jiraticket_view> arrayList= new ArrayList<Jiraticket_view>();
		
		String search =req.getParameter("search");
		String assgineeCheckBox =req.getParameter("assgineeCheckBox");
		String assignee =req.getParameter("assignee");
		String ReporterCheckBox =req.getParameter("ReporterCheckBox");
		String reportee =req.getParameter("reportee");
		String statusCheckBox =req.getParameter("statusCheckBox");
		String status =req.getParameter("status");

		if(!("ON").equalsIgnoreCase(assgineeCheckBox)
				&&!("ON").equalsIgnoreCase(ReporterCheckBox)&&!("ON").equalsIgnoreCase(statusCheckBox))
			 arrayList=	Helper_class.ViewAllTicket();
		else
		{
			String query="";
			if(("ON").equalsIgnoreCase(assgineeCheckBox))
			{
				query="select * from Jira_details where Jira_Assigneename=?";
				arrayList = Helper_class.viewFilterTicket(query,assignee);
				
			}
			if(("ON").equalsIgnoreCase(ReporterCheckBox)) {
				
				query="select * from Jira_details where Jira_Reportername=?";
				arrayList = Helper_class.viewFilterTicket(query,reportee);
				
			}
			if(("ON").equalsIgnoreCase(statusCheckBox)) {
				
				query="select * from Jira_details where Jira_Status=?";
				arrayList = Helper_class.viewFilterTicket(query,status);
			}
			
		
			
		}
	
		//ArrayList<Jiraticket_view> arr=Helper_class.ViewAllTicket();
		req.setAttribute("Jiraticket", arrayList);
		
		ArrayList<String> arrlist=Helper_class.viewdetails();
		req.setAttribute("ulist", arrlist);
		
		RequestDispatcher rdp=req.getRequestDispatcher("ViewTicket.jsp");
		
		rdp.forward(req, resp);
	}
}
      
