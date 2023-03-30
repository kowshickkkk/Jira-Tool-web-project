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

public class EditTicket_servlet extends HttpServlet {
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	   int id=Integer.parseInt(req.getParameter("id"));
	   
	   ArrayList<Jiraticket_view> al=Helper_class.viewoneticket(id);
	   
	   Jiraticket_view jt=al.get(0);
	   
	   req.setAttribute("JT_detail", jt);
	   
	   ArrayList<String> as=Helper_class.viewdetails();
	   
	   req.setAttribute("userdetail", as);
	   RequestDispatcher rdp=req.getRequestDispatcher("UpdateTicket.jsp");
	   rdp.forward(req, resp);
}
}
