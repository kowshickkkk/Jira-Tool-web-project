package Servlet_package;

import java.io.IOException;

import Helper_package.Helper_class;
import Helper_package.Mail;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Jiraticket_view;

public class UpdateTicket_servlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String assignee=req.getParameter("Assigneename");
		String reporter=req.getParameter("Reportername");
		String problem=req.getParameter("problem");
		String notify=req.getParameter("notify");
		String status=req.getParameter("status");
		
		boolean sendmail=false;
		System.out.println(("Dev Done").equalsIgnoreCase(status));
		if(("Dev Done").equalsIgnoreCase(status))
			sendmail=true;
		if(sendmail)
			Mail.sendMailforNotifymailId(id,notify);
		
		boolean result=Helper_class.UpdateSingleTicket(assignee,reporter,problem,notify,status,id);
		RequestDispatcher rdp=req.getRequestDispatcher("/view");
		if(result)
			req.setAttribute("msg", "*_Updated Sucessfully_*");
		else
			req.setAttribute("msg","**_Updated UnSucessful_**");
		rdp.include(req, resp);
		
	}
}
