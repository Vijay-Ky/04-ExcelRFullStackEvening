package com.excelr.main;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Servlet3 extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("Hello from Servlet3!");
    }
}
