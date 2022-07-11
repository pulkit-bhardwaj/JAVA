package hostel.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hostel.dao.UserDao;
import hostel.operation.UserOperation;


public class LoginController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDao user=new UserDao();
		user.setUid(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		String type=request.getParameter("usertype");
		user=UserOperation.login(user);
		PrintWriter out=response.getWriter();
		request.setAttribute("user", user);
		if(user.getUser_type().equalsIgnoreCase("admin")&&type.equalsIgnoreCase("admin")) {
			HttpSession session=request.getSession(true);
			session.setAttribute("user",user );
			response.sendRedirect("tryadmin.jsp");
			
		} else if(user.getUser_type().equalsIgnoreCase("user")&&type.equalsIgnoreCase("user")) {
			HttpSession session=request.getSession(true);
			session.setAttribute("user", user);
			response.sendRedirect("try.jsp?id="+session.getId());
		}
		
		else {
			response.sendRedirect("index.html" );
		}
		
	}

}
