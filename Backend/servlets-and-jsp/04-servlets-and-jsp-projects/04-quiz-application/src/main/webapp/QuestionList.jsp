<%--Document : QuestionList--%>
<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.vp.main.model.QuestionsDao"%>
<%@page import="com.vp.main.db.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Question List</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<center><h3><pre><font color="blue">List of all questions</font></pre></h3></center>
<table class="table table-bordered table-hover">
<tr tr class="table-dark">
 <th>s no.</th>
 <th>Question</th>
 <th>Option A </th>
 <th>Option B </th>
 <th>Option C </th>
 <th>Option D </th>
 <th>Correct Answer</th>
 <th>Update</th>
 <th>Delete</th>
</tr>
<tr>
<%
   int i = 0;
   ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();
  for(Questions e : allQuestions)
  {   
	  
  
  %>
   <tr>
  <td><%=i++%></td>
  <td><%=e.getQuestion() %></td>
  <td><%=e.getA()%></td>
  <td><%=e.getB()%></td>
  <td><%=e.getC()%></td>
  <td><%=e.getD()%></td>
  <td><%=e.getAnswer()%></td>
  <td><a href="updatequestion.jsp?ques=<%=e.getQuestion()%>">Update</a></td>
  <td><a href="deletequestion.jsp?ques=<%=e.getQuestion()%>">Delete</a></td>
  </tr>
  <%
  }
  %>
<th colspan="4"  ><center><input type="button" value="Add Question" class="btn btn-outline-success" onclick="location.href='AddQuestion.jsp'"></center></th>
<th><input type="hidden"></th>
<th colspan="4"  ><center><input type="button" class="btn btn-outline-danger" value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>

</table>
</body>
</html>--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.vp.main.model.QuestionsDao"%>
<%@page import="com.vp.main.db.*"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <meta charset="ISO-8859-1">
  <title>Question List</title>
  <style>
    .table th, .table td {
      vertical-align: middle;
    }
    .table th {
      background-color: #343a40;
      color: #fff;
    }
    .btn-custom {
      background-color: #007bff;
      color: #fff;
    }
    .btn-custom:hover {
      background-color: #0056b3;
      color: #fff;
    }
  </style>
</head>
<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <a class="navbar-brand" href="#">Online Examination System</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="AdminPanel.jsp">Admin Panel</a>
          </li>
        </ul>
      </div>
    </nav>
  </header>

  <div class="container my-5">
    <h3 class="text-center text-primary mb-4">List of all questions</h3>
    <table class="table table-striped table-hover">
      <thead>
        <tr>
          <th>S. No.</th>
          <th>Question</th>
          <th>Option A</th>
          <th>Option B</th>
          <th>Option C</th>
          <th>Option D</th>
          <th>Correct Answer</th>
          <th>Update</th>
          <th>Delete</th>
        </tr>
      </thead>
      <tbody>
        <%
          int i = 0;
          ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();
          for(Questions e : allQuestions) {
        %>
        <tr>
          <td><%=i++%></td>
          <td><%=e.getQuestion()%></td>
          <td><%=e.getA()%></td>
          <td><%=e.getB()%></td>
          <td><%=e.getC()%></td>
          <td><%=e.getD()%></td>
          <td><%=e.getAnswer()%></td>
          <td><a href="updatequestion.jsp?ques=<%=e.getQuestion()%>" class="btn btn-sm btn-custom"><i class="fas fa-edit"></i> Update</a></td>
          <td><a href="deletequestion.jsp?ques=<%=e.getQuestion()%>" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Delete</a></td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>
    <div class="d-flex justify-content-between mt-4">
      <a href="AddQuestion.jsp" class="btn btn-primary btn-custom"><i class="fas fa-plus"></i> Add Question</a>
      <a href="AdminPanel.jsp" class="btn btn-danger"><i class="fas fa-arrow-left"></i> Back to Panel</a>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="https://kit.fontawesome.com/your-font-awesome-kit.js" crossorigin="anonymous"></script>
</body>
</html>