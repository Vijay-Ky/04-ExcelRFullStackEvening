<%--Document : AdminPanel--%>
<%--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<% if(session.getAttribute("username") !=null)
	{
	
	}
else
{
	String msg2 = "Please Login as Admin to Continue";
	response.sendRedirect("AdminLogin.jsp?msg2="+msg2);
}
	%>
<div height="250" width=100% style="background-color: yellow">
  <marquee behavior="alternate">
     <h1> <font  color ="green">Welcome   <%out.println(session.getAttribute("username")); %></font></h1>
  </marquee>
</div>
<center>
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6"><center><input onclick="location.href='StudentList.jsp';" type="button" value="Add/Update Student" class="btn btn-outline-primary btn-lg btn-block"></center> </div>
      <div class="col-sm-6"><center><input onclick="location.href='InstructionList.jsp';" type="button" value="Add/Update Instructions" class="btn btn-outline-primary btn-lg btn-block"></center></div>
    </div>  
  </div>
  <pre>
  </pre>
   <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6"><center><input onclick="location.href='QuestionList.jsp'"type="button" value="Add/Update Question" class="btn btn-outline-primary btn-lg btn-block"></center></div>
      <div class="col-sm-6"><center><input onclick="location.href='com.vp.main.controller.LogoutAdmin'"type="button" value="Logout" class="btn btn-outline-primary btn-lg btn-block"></center></div>
    </div>  
  </div>
  </center>
</body>
</html>

--%>
<%-- 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container-fluid">
        <% if(session.getAttribute("username") !=null) { %>
            <div class="row">
                <div class="col">
                    <div class="alert alert-success" role="alert">
                        Welcome <strong><%= session.getAttribute("username") %></strong>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <button onclick="location.href='StudentList.jsp';" type="button" class="btn btn-primary btn-lg btn-block">Add/Update Student</button>
                </div>
                <div class="col-md-6">
                    <button onclick="location.href='InstructionList.jsp';" type="button" class="btn btn-primary btn-lg btn-block">Add/Update Instructions</button>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6">
                    <button onclick="location.href='QuestionList.jsp';" type="button" class="btn btn-primary btn-lg btn-block">Add/Update Question</button>
                </div>
                <div class="col-md-6">
                    <button onclick="location.href='com.vp.main.controller.LogoutAdmin';" type="button" class="btn btn-primary btn-lg btn-block">Logout</button>
                </div>
            </div>
        <% } else { %>
            <% 
                String msg2 = "Please Login as Admin to Continue";
                response.sendRedirect("AdminLogin.jsp?msg2="+msg2);
            %>
        <% } %>
    </div>
</body>
</html>
 --%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        .btn-lg {
            padding: 20px 30px; /* Increase padding for larger buttons */
            font-size: 24px; /* Increase font size for larger buttons */
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Add shadow */
            transition: all 0.3s ease; /* Add transition for smoother hover effect */
        }

        .btn-lg:hover {
            transform: translateY(-2px); /* Add slight upward movement on hover */
            box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.15); /* Enhance shadow on hover */
        }

        .btn-lg:focus {
            box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.5); /* Add focus effect */
            outline: none; /* Remove default focus outline */
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <% if(session.getAttribute("username") !=null) { %>
            <div class="row">
                <div class="col">
                    <div class="alert alert-success" role="alert">
                        Welcome <strong><%= session.getAttribute("username") %></strong>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <button onclick="location.href='StudentList.jsp';" type="button" class="btn btn-primary btn-lg btn-block">Add/Update Student</button>
                </div>
                <div class="col-md-6">
                    <button onclick="location.href='InstructionList.jsp';" type="button" class="btn btn-primary btn-lg btn-block">Add/Update Instructions</button>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6">
                    <button onclick="location.href='QuestionList.jsp';" type="button" class="btn btn-primary btn-lg btn-block">Add/Update Question</button>
                </div>
                <div class="col-md-6">
                    <button onclick="location.href='com.vp.main.controller.LogoutAdmin';" type="button" class="btn btn-primary btn-lg btn-block">Logout</button>
                </div>
            </div>
        <% } else { %>
            <% 
                String msg2 = "Please Login as Admin to Continue";
                response.sendRedirect("AdminLogin.jsp?msg2="+msg2);
            %>
        <% } %>
    </div>
</body>
</html>
