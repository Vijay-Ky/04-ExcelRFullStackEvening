<%--Document : AddStudent--%>
<%--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Add students</title>
</head>
<body>
<h2><font  face = "WildWest" color="blue">Enter Student Details</font></h2>
<form action="com.vp.main.controller.StudentInsert">
<pre>
Name:         <input type="text" name="name">

User id:      <input type="text" name="uname">

Password:     <input type="text" name="pass">

             
             <input type="submit" value="Register" class="btn btn-outline-primary">   <input type="button" onclick="location.href='AdminPanel.jsp'" value="Home" class="btn btn-outline-success">    <input type="button" onclick="location.href='StudentList.jsp'" value="Back" class="btn btn-outline-danger">
</pre>
</form>
<div>
<font color="red" >
		<%
			if(request.getParameter("msg2") != null)
				out.print(request.getParameter("msg2"));
		%>
		</font>
			<font color="green" >
		<%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
		</font>
		</div>

</body>
</html>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add students</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        h2 {
            font-family: 'WildWest', cursive;
            color: blue;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Enter Student Details</h2>
        <form action="com.vp.main.controller.StudentInsert">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" class="form-control">
            </div>
            <div class="form-group">
                <label for="userId">User ID:</label>
                <input type="text" id="userId" name="uname" class="form-control">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="pass" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">Register</button>
            <a href="AdminPanel.jsp" class="btn btn-success">Home</a>
            <a href="StudentList.jsp" class="btn btn-danger">Back</a>
        </form>
        <div>
            <font color="red">
                <%
                    if(request.getParameter("msg2") != null)
                        out.print(request.getParameter("msg2"));
                %>
            </font>
            <font color="green">
                <%
                    if(request.getParameter("msg1") != null)
                        out.print(request.getParameter("msg1"));
                %>
            </font>
        </div>
    </div>
</body>
</html>

