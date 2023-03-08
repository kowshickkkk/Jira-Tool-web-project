package Servlet_package;

import java.io.IOException;
import java.io.PrintWriter;

import Helper_package.Helper_class;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Register_servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter ps=resp.getWriter();
		
		String firstname=req.getParameter("first_name");
		String lastname=req.getParameter("last_name");
		String email=req.getParameter("email");
		String mobile=req.getParameter("mobile");
		String password=req.getParameter("password");
		
		boolean result=Helper_class.insertuser(firstname,lastname,email,mobile,password);
		

		if(result)
		{
			ps.print("Registration Sucess");
			
			resp.sendRedirect("/Jira_Ticket_webproject/LoginFile.jsp");
		}
	  else
		    ps.print("Registration fail");
		
	}
}
