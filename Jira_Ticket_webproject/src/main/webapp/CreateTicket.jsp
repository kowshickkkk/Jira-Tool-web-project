<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Ticket</title>
</head>
<body>
<% String msg="";
if(request.getAttribute("notify")!=null){
	msg=(String)request.getAttribute("notify");
    msg=msg+"<br><a href=\"Home\" class=\"text_link\">home</a>";}
%>

<%
String ul="";
ArrayList<String> ulist=new ArrayList<String>();
if(request.getAttribute("ulist")!=null){
ulist=(ArrayList<String>)request.getAttribute("ulist");
}
for(String st:ulist){
	ul=ul+"<option>"+st+"</option>";
}
	%>
<form action="/Jira_Ticket_webproject/Create_ticket" method="get"> 

<h1>Create New Ticket</h1><br><br>
<h3><%= msg %></h3>

<label class="from-lable" for"type">Assignee:</label>
<select name="AssigneeName" class="email1">
<%=ul %>
</select>

<label class="from-lable" for"type">Reporter:</label>
<select name="ReporterName" class="email1"><%=ul %>></select>

<label class="from-lable" for"type">Problem:</label>
<input type="text" name="Problem" placeholder="Enter Your Problem"><br><br>

<label class="from-lable" for"type">Notify:</label>
<select name="notify" class="email1"><%=ul %>></select>

<label class="from-lable" for"type">Status:</label>
<select id="status" name="status">
<option name="To-do">To-do</option>
<option name="Analysing">Analysing</option>
<option name="Analysing done">Analysing done</option>
<option name="Testing">Testing</option>
<option name="Done">Done</option>
</select><br><br>
<button class="btn" type="submit">Create</button>

 </body>
 </form>
</html>