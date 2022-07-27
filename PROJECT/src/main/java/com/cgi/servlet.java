package com.cgi;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Employee;
import com.test.saveObject;


@WebServlet("/register")
public class servlet extends HttpServlet {
	
	@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
		PrintWriter out =resp.getWriter();
		resp.setContentType("text/html");
		
		String name = req.getParameter("name");
		String gender =req.getParameter("gender");
		String loc = req.getParameter("location");
		String bb =req.getParameter("broadband");
		
		Employee emp = new Employee();
		emp.setName(name);
		emp.setGender(gender);
		emp.setLocation(loc);
		emp.setBb(bb);
		
	int count =  saveObject.save(emp);
	if(count==0) {
		out.println("<h2> USER REGISTRATION IS NOT DONE </h2>");
	}
	else {
		out.println("<h2> USER REGISTRATION DONE SUCCESSFULLY</h2>");
	}
	
	out.close();
		
}
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
		doGet(req,resp);
			
		}

}
