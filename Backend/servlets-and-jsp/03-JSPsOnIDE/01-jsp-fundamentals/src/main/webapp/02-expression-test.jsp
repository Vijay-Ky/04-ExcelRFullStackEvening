<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>jsp expression</title>
	</head>
	<body>
		<h3>Hello World of Java!</h3>
		Convert a String to uppercase: <%= new String("Hello World").toUpperCase() %> <br/><br/>
		Is 75 less than 69? <%= 75 < 69 %>
	</body>
</html>

<!-- comment for html code -->
<%-- comment for jsp code --%>