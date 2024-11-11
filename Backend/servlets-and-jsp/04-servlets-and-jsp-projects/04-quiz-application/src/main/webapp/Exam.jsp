<%--Document : Exam--%>

<%--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.vp.main.model.QuestionsDao"%>
 <%@page import="com.vp.main.db.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>


<HTML>
    <HEAD>
        <TITLE>Examination </TITLE>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

      <script>
      <%
      String clock = request.getParameter("clock");
      if(clock == null)
    	  clock = "60";
      %>
      var timeout = <%=clock %>
      function timer()
      {
    	  if( timeout > 0)
    		  {
    		  timeout--;
    		  document.forma.clock.value ="Time Over";
    	      document.forma.clock.value = timeout;
    		  window.setTimeout("timer()", 1000 );
    		  }
    	  else
    		  {
    		  document.forma.clock.value ="Time Over";
    		  formb.submit();
    		  }
      }
      </script>


    </HEAD>
    <BODY onload="timer()">
        <form name="forma" action="<%=request.getRequestURL()%>">

     <font color="green">Time Left <input size="1" name="clock" id="fno" value="<%=clock%>" style="background: #ffcdd2" readonly></font>
  
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <form action="Result.jsp" name="formb">
<font color="red">Questions Left</font>
 
    <table class="table table-hover">
    <thead>
<tr class="table-warning">
 <th>s no.</th>
 <th>Question</th>
 <th>Option A </th>
 <th>Option B </th>
 <th>Option C </th>
 <th>Option D </th>
</tr>
</thead>
<tr>

<%
   int i = 1;
  
   int radioname = 0;
   ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();
  for(Questions e : allQuestions)
  {   
	  %><%=i%><%  
  
  %>
    
   <tr>
  <td><%=i++%></td>
  <td><%=e.getQuestion() %></td>
  <td><input type="radio" value="a" name="<%=radioname%>"><%=e.getA()%></td>
  <td><input type="radio" value="b" name="<%=radioname%>"><%=e.getB()%></td>
  <td><input type="radio" value="c" name="<%=radioname%>"><%=e.getC()%></td>
  <td><input type="radio" value="d" name="<%=radioname%>"><%=e.getD()%></td>
  

  
  
  </tr>

<input type="radio" value="e" name="<%=radioname %>" checked="checked" name=<%=radioname %>>
 
  <%
  radioname++;
  }
  %>
  </table>
  <center><input class="btn btn-outline-success btn-lg" type="submit" value="submit"></center>
 
  </form>
    </BODY>
</HTML>

--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.vp.main.model.QuestionsDao"%>
<%@page import="com.vp.main.db.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<HTML>
    <HEAD>
        <TITLE>Examination</TITLE>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script>
            <%
            String clock = request.getParameter("clock");
            if(clock == null)
                clock = "60";
            %>
            var timeout = <%=clock %>
            function timer()
            {
                if( timeout > 0)
                {
                    timeout--;
                    document.forma.clock.value ="Time Left: " + timeout;
                    window.setTimeout("timer()", 1000 );
                }
                else
                {
                    document.forma.clock.value ="Time Over";
                    formb.submit();
                }
            }
        </script>
    </HEAD>
    <BODY onload="timer()">
        <form name="forma" action="<%=request.getRequestURL()%>">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="card">
                            <%-- <div class="card-header bg-primary text-white">
                                <h3 class="card-title">Exam</h3>
                            </div> --%>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="fno">Time Left:</label>
                                    <input class="form-control" size="1" name="clock" id="fno" value="<%=clock%>" style="background: #ffcdd2" readonly>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <form action="Result.jsp" name="formb">
            <div class="container my-5">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-warning">
                                <h3 class="card-title">Java Programming</h3>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr class="table-warning">
                                            <th>S.No.</th>
                                            <th>Question</th>
                                            <th>Option A</th>
                                            <th>Option B</th>
                                            <th>Option C</th>
                                            <th>Option D</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                        int i = 1;
                                        int radioname = 0;
                                        ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();
                                        for(Questions e : allQuestions)
                                        {
                                        %>
                                        <tr>
                                            <td><%=i++%></td>
                                            <td><%=e.getQuestion() %></td>
                                            <td><input type="radio" value="a" name="q<%=radioname%>"> <%=e.getA()%></td>
                                            <td><input type="radio" value="b" name="q<%=radioname%>"> <%=e.getB()%></td>
                                            <td><input type="radio" value="c" name="q<%=radioname%>"> <%=e.getC()%></td>
                                            <td><input type="radio" value="d" name="q<%=radioname%>"> <%=e.getD()%></td>
                                        </tr>
                                        <%
                                        radioname++;
                                        }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-outline-success btn-lg btn-block">Submit</button>
                    </div>
                </div>
            </div>
        </form>
    </BODY>
</HTML>