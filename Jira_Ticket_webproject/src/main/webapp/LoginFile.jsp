<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<style>body {
 margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
   
    background-size: cover;
}
.login-box {
	width: 280px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #222;
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

.avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -50px;
	left: calc(50% - 50px);
}

.invit-only label input[type="checkbox"] {
	margin-right: 1px;
}
.referral-code {
  color: white;
}</style>

<body>
<form action="/Jira_Ticket_webproject/login" method="get">

<div class="login-box">
	<img src="https://cdn.pixabay.com/photo/2019/12/25/09/10/girl-mascot-4718135_960_720.png" class="avatar">
		
		<h2>Jira Ticket Login</h2>
	<p>Email</p>	
<input type="email" name="email" placeholder="enter email"><br><br>
<p>Password</p>
<input type="password" name="password" placeholder="enter password"><br><br>

<button class="btn" type="submit">Login</button><br><br>

<a href="RegisterFile.jsp"><div id="btn2">Register</div></a>

</div>
</form>
</body>
</html>