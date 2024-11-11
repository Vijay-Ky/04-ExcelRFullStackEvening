<%--Document   : deleteinstruction--%>
<%--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.vp.main.db.*" %>
    <%@page import="com.vp.main.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Instructions</title>
</head>
<body>
<%
		Instructions i = new Instructions();
		i.setInstruction(request.getParameter("inst"));
		int status = InstructionsDao.deleteRecord(i);
		if(status > 0)
			response.sendRedirect("InstructionList.jsp");
		else
			out.print("Error");
		
	%>
</body>
</html>
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.vp.main.db.*" %>
    <%@page import="com.vp.main.model.*" %>
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Instructions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            padding: 20px;
            text-align: center;
        }
        h2 {
            color: #007bff;
        }
        .success-message {
            color: #28a745;
            margin-top: 20px;
        }
        .error-message {
            color: #dc3545;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Delete Instructions</h2>
        <%
            Instructions i = new Instructions();
            i.setInstruction(request.getParameter("inst"));
            int status = InstructionsDao.deleteRecord(i);
            if(status > 0) {
                // If deletion successful
                out.print("<p class='success-message'>Instruction deleted successfully!</p>");
                // Redirect after 3 seconds
                response.setHeader("Refresh", "3; URL=InstructionList.jsp");
            } else {
                // If deletion failed
                out.print("<p class='error-message'>Error occurred while deleting instruction.</p>");
            }
        %>
    </div>
</body>
</html>
