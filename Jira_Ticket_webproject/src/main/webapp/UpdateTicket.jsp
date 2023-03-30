<%@page import="pojo.Jiraticket_view"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Ticket</title>
</head>
<body>
<div class="box">
<% 
String message="";
	if(request.getAttribute("msg") != null){
		message=(String)request.getAttribute("msg");
		message=message+"<br><a href=\"Home\" class=\"text-link\">home</a>";
	
	}
	Jiraticket_view ji=(Jiraticket_view)request.getAttribute("JT_detail");
	int id=ji.getId();
	String assignee=ji.getAssigneename();
	String reporter=ji.getReportername();
	String heading=ji.getProblem();
	String notify=ji.getNotify();
	String status=ji.getStatus();
	
	String st="";
	ArrayList<String> userlist=new ArrayList<String>();
	userlist=(ArrayList<String>)request.getAttribute("userdetail");

	for(String str:userlist){
		st=st+"<option >"+str+"</option>";	
	}
	
%>

<form method="get" action="/Jira_Ticket_webproject/updateJira">
<div class="login-box">
<h1>Update ticket</h1>
<h3><%= message %></h3>
<input type="hidden" name="id" value="<%=id %>">

<label >Edit Assignee:</label>
<select name="Assigneename" class="email">
<option name="<%= assignee %>"><%= assignee %></option>
<%=st%>
</select><br><br>
 
<label >Edit Reporter:</label>
<select name="Reportername" class="email">
<option name="<%= reporter %>"><%= reporter %></option>
<%=st%>
</select> <br><br>

<label >Edit Problem:</label>
<input type="text" value="<%=heading %>" name="problem" placeholder="Problem Description" onFocus="field_focus(this, 'email');" onblur="field_blur(this, 'email');" class="email" required="required"/>
<br><br>

<label >Edit Notify:</label>
<select name="notify" class="email">
<option name="<%= notify %>"><%= notify %></option>
<%=st%>
</select> <br><br>

<label >Edit Status:&nbsp&nbsp&nbsp</label>

<select name="status" id="status" class="email">
<option name="<%= status %>"><%= status %></option>
  <option name="To-do" >To-do</option>
  <option name="Analysis Wip">Analysis Wip</option>
  <option name="Analysis Done">Analysis Done</option>
  <option name="Dev Wip">Dev Wip</option>
  <option name="Testing">Testing</option>
   <option name="Dev Done">Dev Done</option>
</select>
<button class="btn" type="submit">update</button> 
</div>


<style>body {
 margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    background-size: cover;
    background: gray;
}
.login-box {

	width: 300px;
	position: absolute;
	top: 50%;
	left: 50%;
	
	transform: translate(-50%, -50%);
	background: #0cb9c2 ;
	padding: 40px;
	border-radius: 5px;
	box-shadow: 0 0 10px #000;
}

.login-box h1 {
	color: purple;
	text-align: center;
	font-size: 24px;
	margin-top: 0;
}

.login-box p {
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
}

.login-box input[type="text"],
.login-box input[type="email"] {
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}

.login-box input[type="text"],
.login-box input[type="password"] {
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}

.login-box button[type="submit"] {
	border: none;
	outline: none;
	height: 30px;
	background: #fb2525;
	color: #fff;
	font-size: 14px;
	border-radius: 15px;
}

.login-box div[type="submit"]:hover {
	cursor: pointer;
	background: #ffc107;
	color: #000;
}

.login-box btn {
	color: blue;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
}

.login-box a:hover {
	text-decoration: underline;
}

</style>
 

</form>
</body>
</html>