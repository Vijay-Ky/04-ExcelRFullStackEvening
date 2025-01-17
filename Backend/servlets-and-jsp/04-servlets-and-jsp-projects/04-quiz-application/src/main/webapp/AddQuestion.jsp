<%--Document   : AddQuestion--%>

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
<title>Add Question</title>
</head>
<body>
<h2><font  face = "WildWest" color="blue">Enter Questions Here</font></h2>
<form action="com.vp.main.controller.QuestionInsert">
<pre>
Question:    <input type="text" name="Question">

Option A:     <input type="text" name="option1">

Option B:     <input type="text" name="option2">

Option C:     <input type="text" name="option3">

Option D:     <input type="text" name="option4">

Answer:      <select name="answer">
             <option value="a">a</option>
             <option value="b">b</option>
             <option value="c">c</option>
             <option value="d">d</option>
             </select>
             
             <input type="submit" value="Done" class="btn btn-outline-primary">    <input type="button" onclick="location.href='AdminPanel.jsp'" value="Home" class="btn btn-outline-success">    <input type="button" onclick="location.href='QuestionList.jsp'" value="Back" class="btn btn-outline-danger">
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
    <title>Add Question</title>
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
        <h2>Enter Questions Here</h2>
        <form action="com.vp.main.controller.QuestionInsert">
            <div class="form-group">
                <label for="question">Question:</label>
                <input type="text" id="question" name="Question" class="form-control">
            </div>
            <div class="form-group">
                <label for="optionA">Option A:</label>
                <input type="text" id="optionA" name="option1" class="form-control">
            </div>
            <div class="form-group">
                <label for="optionB">Option B:</label>
                <input type="text" id="optionB" name="option2" class="form-control">
            </div>
            <div class="form-group">
                <label for="optionC">Option C:</label>
                <input type="text" id="optionC" name="option3" class="form-control">
            </div>
            <div class="form-group">
                <label for="optionD">Option D:</label>
                <input type="text" id="optionD" name="option4" class="form-control">
            </div>
            <div class="form-group">
                <label for="answer">Answer:</label>
                <select id="answer" name="answer" class="form-control">
                    <option value="a">A</option>
                    <option value="b">B</option>
                    <option value="c">C</option>
                    <option value="d">D</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Done</button>
            <a href="AdminPanel.jsp" class="btn btn-success">Home</a>
            <a href="QuestionList.jsp" class="btn btn-danger">Back</a>
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
