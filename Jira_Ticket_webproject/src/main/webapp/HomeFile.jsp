<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<form action="/Jira_Ticket_webproject/home" method="get"></form>

<header>
  <h1>Jira Title</h1>
  <ul>
    <h3><li><a href="showCreateTicket" class="active">Create_ticket</a></li></h3>
     <h3><li><a href="view">view ticket</a></li></h3>
     <h3><li><a href="Contact.jsp">Contact</a></li></h3>
    <h3> <li><a href="logout">Logout</a></li></h3><br>
    
    <h3><li>UserName:<% out.print(request.getAttribute("uname")); %></li></h3>
    

  </ul>
</header>
</body>
</html>