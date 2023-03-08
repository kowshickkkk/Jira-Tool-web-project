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
<div class="box">
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
   <option name="Dev Done">Dev Done</option>
</select>
<button class="btn" type="submit">update</button> 
 
</div>
  
</form>
</body>
</html>