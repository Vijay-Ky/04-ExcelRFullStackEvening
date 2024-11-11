<%--Document:StudentLogin--%>
<%-- 
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<style type="text/css">
	li
	{
		float: left;
	}
	ul
	{
	
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		background-color:#333; 
	}
	li a
	{
		display: inline-block;
		color: white;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none; 
	}
	li a:HOVER {
	background-color: aqua;
}
</style>
<title>Student Login</title>

</head>
<body>
	<font color="blue"><center><h1>Student Login</h1></center></font>
	<font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
		<font color="green" >
		<%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
		</font>
	<form action="com.vp.main.controller.ValidateStudent" method="post">
		<pre>
			User Id         :	<input type="text" name="uname">	 <br>
			Password 	:	<input type="password" name="pass">	 <br>
			                  	<input  onclick="location.href='index.html'" type="button" value="Exit" class="btn btn-outline-primary">          <input type="submit" value="Login" class="btn btn-outline-primary">
				
		</pre>
	</form>
	
</body>
</html>
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 50px; /* Add some top padding to the body to avoid overlap with navbar */
        }
        .navbar {
            background-color: #343a40; /* Dark navbar color */
        }
        .navbar-brand {
            color: #ffffff; /* White color for navbar brand */
        }
        .form-container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h1 {
            color: #007bff; /* Blue color for heading */
            text-align: center;
            margin-bottom: 30px;
        }
        .form-container input[type="text"],
        .form-container input[type="password"] {
            width: 100%;
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }
        .form-container input[type="submit"],
        .form-container input[type="button"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #ffffff;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .form-container input[type="submit"]:hover,
        .form-container input[type="button"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Student Login</a>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="form-container">
                    <h1>Login</h1>
                    <!-- Form -->
                    <form action="com.vp.main.controller.ValidateStudent" method="post">
                        <div class="form-group">
                            <label for="uname">User ID</label>
                            <input type="text" id="uname" name="uname" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="pass">Password</label>
                            <input type="password" id="pass" name="pass" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Login" class="btn btn-primary">
                            <br/><br/>
                             <input type="button" value="Exit" onclick="location.href='index.html'" class="btn btn-secondary">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>

















