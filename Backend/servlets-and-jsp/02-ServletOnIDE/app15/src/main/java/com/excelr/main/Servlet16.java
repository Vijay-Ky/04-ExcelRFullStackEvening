package com.excelr.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet16 extends HttpServlet 
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		PrintWriter out = resp.getWriter();
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String age = req.getParameter("age");
		String address = req.getParameter("address");
		String gender = req.getParameter("gender");
		String c = req.getParameter("skill1");
		String cpp = req.getParameter("skill2");
		String java = req.getParameter("skill3");
		String angular = req.getParameter("skill4");
		String education = req.getParameter("education");
		
		int status = DbUtil.save(firstName, lastName, age, address, gender, c, cpp, java, angular, education);
		if(status == 1)
		{
			out.println("<html><body>");
			out.println("Saved In the DB Successfully!");
			out.println("<hr/>");
		}
		else
		{
			
			out.println("Threre was some error!");
			out.println("<hr/>");
			out.println("</body></html>");
		}
	}
}
