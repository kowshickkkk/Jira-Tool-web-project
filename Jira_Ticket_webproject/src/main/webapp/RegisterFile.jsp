<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
<form action="/Jira_Ticket_webproject/register">
<h1>Register Jira Ticket</h1><br><br>

<label class="from-lable" for"type">First Name:</label>
<input type="text" name="first_name" placeholder="Enter First name"><br><br>
<label class="from-lable" for"type">Last Name:</label>
<input type="text" name="last_name" placeholder="Enter Last name"><br><br>
<label class="from-lable" for"type">Email:</label>
<input type="email" name="email" placeholder="Enter Email Address"><br><br>
<label class="from-lable" for"type">Mobile no:</label>
<input type="text" name="mobile" placeholder="Enter Mobile no"><br><br>
<label class="from-lable" for"type">Password:</label>
<input type="password" name="password" placeholder="Enter Password"><br><br>
<button type="submit">register</button>
</form>

</body>
</html>