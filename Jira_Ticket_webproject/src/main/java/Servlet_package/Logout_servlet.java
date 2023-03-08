package Servlet_package;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Logout_servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
    resp.setContentType("text/html");
		
	Cookie[] ac=req.getCookies();
	String kk="";
	Cookie oc=null;
	boolean result=false;
	for(Cookie ck :ac) {
		if(ck.getName().equals("LoginCookie")) {
			oc=ck;
	        result=true;
	        break;
	        }
		}
	      oc.setMaxAge(1);
	      
	      resp.addCookie(oc);
	      RequestDispatcher rd=null;
	      
	      if(result) {
	    	 rd= req.getRequestDispatcher("LoginFile.jsp");
	    	  rd.forward(req, resp);
	      }
	      	
	}
}
