package Servlet_package;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Home_servlet extends  HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		Cookie[] arc = req.getCookies();
		String name="";
		boolean result = false;
		if(arc !=null) {
		for (Cookie cook : arc) {
			if (cook.getName().equals("LoginCookie")) {
				name =cook.getValue();
				result = true;
				break;
			}

		}}
		if(!name.isEmpty()){
			
		int index= name.indexOf("1");
		
		name=name.substring(0, index);
		req.setAttribute("uname", name);
		}
		RequestDispatcher dsp=null;
		if(result) {
			dsp = req.getRequestDispatcher("HomeFile.jsp");
			dsp.forward(req, resp);
			}
		
		else {
			
			req.setAttribute("msg", "Sorry session timed out!");
			dsp= req.getRequestDispatcher("LoginFile.jsp");
			dsp.forward(req, resp);
			}
			


	}
}
