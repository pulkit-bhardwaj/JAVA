package hostel.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hostel.dao.UserDao;

public class SecondServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) {
		doPost(req,res);
	}
	public void doPost(HttpServletRequest req,HttpServletResponse res) {
		try {
			String name=req.getParameter("uid");
			UserDao user=(UserDao)req.getAttribute("user");
			PrintWriter out=res.getWriter();
			out.println("<html><head><title>Dashboard</title></head><body>");
			out.println("<h1>Hello "+user.getFirst_name()+"</h1><h2>You are "+user.getUser_type()+"</h2><h3>Your password is" +user.getPassword()+"</body></html>");
			
		}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}


