
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Jiraticket_view"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 1rem 2rem;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

th {
	font-weight: normal;
	font-size: .875rem;
	color: #666;
	background: #eee;
	position: sticky;
	top: 0;
}

img {
	width: 80px;
	display: block;
	margin: 0 auto;
	margin-bottom: .5rem;
}

@media ( max-width : 500px) {
	.heading {
		display: none;
	}
	td {
		display: block;
	}
	.car-name {
		background: #eee;
	}
}

h1 {
	text-align: center;
	font-size: 2.5rem;
}
</style>
<meta charset="ISO-8859-1">
<title>View</title>
</head>
<body>

<form action="/Jira_Ticket_webproject/view" method="get">

    <% String me="";
      if(request.getAttribute("msg")!=null)
    	  me=(String)request.getAttribute("msg");
    %>
    
	<%
	String Tabledetails = "";
  	ArrayList<Jiraticket_view> ji = (ArrayList<Jiraticket_view>) request.getAttribute("Jiraticket"); 

	for (Jiraticket_view jira : ji) {
		Tabledetails = Tabledetails + "<tr>	" + "<td>" + jira.getId() +"</td>"
	    + " <td>" + jira.getAssigneename() + "</td>"
		+ " <td>" + jira.getReportername() + "</td>" 
	    + " <td>" + jira.getProblem() + "</td>" 
		+ "<td>" + jira.getStatus()+ "</td> " 
	    + "<td>" + "<button type=\"button\"><a href=\"edit?id="+jira.getId()+"\"class=\"text-link\">Edit</a></button>"+ "<br><br>"
		+ "<button type=\"button\"><a href=\"Delete?id="+jira.getId() +"\"class=\"text-link\">Delete</a></button>"+ "</td> " + "</tr>";
	}  
	%>
	
	<div class="table-reponsive box">
		<table id="example" class="table table-striped table-bordered">
		<%= me %>
			<thead>
				<tr>
					<th>ID</th>
					<th>AssigneeName</th>
					<th>ReporterName</th>
					<th>Problems</th>
					<th>Status</th>
					<th>Changes</th>
				</tr>
			</thead>
			
			<tbody>
				<%=Tabledetails%>
			</tbody>
		
		</table>
	</div>
</body>
</html>