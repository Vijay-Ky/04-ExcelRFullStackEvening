<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>jsp built-in object</title>
	</head>
	<body>
		<h3>Hello World of Java!</h3>
		Request user agent<%= request.getHeader("User-Agent") %>
		<br/><br/>
		Request language: <%= request.getLocale() %>
	</body>
</html>