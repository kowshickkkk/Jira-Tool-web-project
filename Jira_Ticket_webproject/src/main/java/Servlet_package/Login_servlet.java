package Servlet_package;

import java.io.IOException;
import java.io.PrintWriter;


import Helper_package.Helper_class;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Login_servlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mail = req.getParameter("email");
		String psswrd = req.getParameter("password");
		String uname = Helper_class.authenticateuser(mail,psswrd);
		resp.setContentType("text/html");
		
		PrintWriter notepad = resp.getWriter();
		notepad.print("sorry user not found try again!");
		
		RequestDispatcher dsp = null;
		req.setAttribute("uname", uname);
		
		if(uname.isEmpty())
			dsp=req.getRequestDispatcher("LoginFile.jsp");
		else
		{
	        
	        Cookie ck = new Cookie("LoginCookie", uname+003);
			
			resp.addCookie(ck);
			
			
			dsp=req.getRequestDispatcher("HomeFile.jsp");
}
		
		if(uname.isEmpty())
			dsp.include(req, resp);
		else
			dsp.forward(req, resp);
	}

}