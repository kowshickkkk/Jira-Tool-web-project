<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Ticket</title>
</head>

<form action="/Jira_Ticket_webproject/Create_ticket" method="get"> 
<body>
<div style="box">

<% String msg="";
if(request.getAttribute("notify")!=null){
	msg=(String)request.getAttribute("notify");
    msg=msg+"<br><a href=\"HomeFile.jsp\">home</a>";}
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
<div class="login-box">
<h1>Create New Ticket</h1><br>
<h3><%= msg %></h3>

<label class="from-lable" for"type">Assignee:</label>
<select name="AssigneeName" class="email1">
<%=ul %>
</select><br><br>

<label class="from-lable" for"type">Reporter:</label>
<select name="ReporterName" class="email1"><%=ul %>></select><br><br>

<label class="from-lable" for"type">Problem:</label>
<input type="text" name="Problem" placeholder="Enter Your Problem"><br><br>

<label class="from-lable" for"type">Notify:</label>
<select name="notify" class="email1"><%=ul %>></select><br><br>

<label class="from-lable" for"type">Status:</label>
<select id="status" name="status">
<option name="To-do">To-do</option>
<option name="Analysis Wip">Analysis Wip</option>
<option name="Analysis Done">Analysis Done</option>
<option name="Dev Wip">Dev Wip</option>
<option name="Testing">Testing</option>
<option name="Dev Done">Dev Done</option>
</select><br><br>
<button class="btn" type="submit">Create</button>
</div>

<style>body {
 margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    background-size: cover;
    background: gray;
}
.login-box {
	width: 280px;
	position: absolute;
	top: 50%;
	left: 50%;
	
	transform: translate(-50%, -50%);
	background: #0cb9c2 ;
	padding: 40px;
	border-radius: 5px;
	box-shadow: 0 0 10px #000;
}

.login-box h2 {
	color: blue;
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

.login-box a {
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
}

.login-box a:hover {
	text-decoration: underline;
}

</style>

</div>
 </body>
 </form>
</html>