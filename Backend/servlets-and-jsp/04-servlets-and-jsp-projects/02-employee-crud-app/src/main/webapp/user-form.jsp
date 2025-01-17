<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add Employee</title>
		 <link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
			crossorigin="anonymous"
		/>
	</head>
	<body>
		 <header>
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color:tomato">
                <div>
                    <a class="navbar-brand">Employee Management Application</a>
                </div>

                <ul class="navbar-nav">
                    <li><a href="<%=request.getContextPath()%>/list"
                    class="nav-link">Employees</a></li>
                </ul>
            </nav>
        </header>
        <br/>
        
        <div class="container col-md-5">
        	<div class="card">
        		<div class="card-body">
        			<c:if test="${user != null}">
        				<form action="update" method="post">
        			</c:if>
        			<c:if test="${user == null}">
        				<form action="insert" method="post">
        			</c:if>
        			
        			<caption>
        				<h2>
        					<c:if test="${user != null}">
        						Edit User
        					</c:if>
        					<c:if test="${user == null}">
        						Add User
        					</c:if>
        				</h2>
        			</caption>
        			
        			<c:if test="${user != null}">
        				<input type="hidden" name="id" value="<c:out value='${user.id}'/>"/>
        			</c:if>
        			
        			<fieldset class="form-group">
        				<label>User Name</label>
        				<input type="text" value="<c:out value='${user.name}'/>" class="form-control" name="name" required="required">
        			</fieldset>
        			
        			<br/>
        			
        			<fieldset class="form-group">
        				<label>User Email</label>
        				<input type="text" value="<c:out value='${user.email}'/>" class="form-control" name="email">
        			</fieldset>
        			
        			<br/>
        			
        			<fieldset class="form-group">
        				<label>User Country</label>
        				<input type="text" value="<c:out value='${user.country}'/>" class="form-control" name="country">
        			</fieldset>
        			<br/>
        			
        			<button type="submit" class="btn btn-success">Save</button>
        			</form>
        		</div>
        	</div>
        </div> 
	</body>
</html>