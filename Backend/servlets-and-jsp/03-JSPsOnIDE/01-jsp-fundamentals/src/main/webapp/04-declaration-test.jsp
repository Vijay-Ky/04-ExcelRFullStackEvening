<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>jsp declaration</title>
	</head>
	<body>
		<h3>Hello World of Java!</h3>
		<%!
			String makeItLower(String data)
			{
				return data.toLowerCase();
			}
		%>
		Lower case "HELLO WORLD": <%= makeItLower("HELLO WORLD") %>
	</body>
</html>