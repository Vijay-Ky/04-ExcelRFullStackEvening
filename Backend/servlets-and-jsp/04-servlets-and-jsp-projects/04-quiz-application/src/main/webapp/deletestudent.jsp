<%--Document   : deletestudent--%>

<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.vp.main.db.*" %>
    <%@page import="com.vp.main.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Student</title>
</head>
<body>
<%
		Students s = new Students();
		s.setUsername(request.getParameter("username"));
		int status = StudentsDao.deleteRecord(s);
		if(status > 0)
			response.sendRedirect("StudentList.jsp");
		else
			out.print("Error");
		
	%>
</body>
</html>--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.vp.main.db.*" %>
    <%@page import="com.vp.main.model.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Student</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding-top: 50px;
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
        <h2>Delete Student</h2>
        <% 
            Students s = new Students();
            s.setUsername(request.getParameter("username"));
            int status = StudentsDao.deleteRecord(s);
            if(status > 0) {
        %>
                <p class="success-message">Student deleted successfully!</p>
                <script>
                    setTimeout(function(){
                        window.location.href = 'StudentList.jsp';
                    }, 3000);
                </script>
        <%  } else { %>
                <p class="error-message">Error occurred while deleting the student.</p>
        <%  } %>
    </div>
</body>
</html>
```

