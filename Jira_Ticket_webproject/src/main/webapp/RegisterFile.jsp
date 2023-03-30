<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<div id="container">
<body>
 
<form action="/Jira_Ticket_webproject/register">
<h1>Register Jira Ticket</h1><br>
<fieldset>
<label class="from-lable" for"type">First Name:</label>
<input type="text" name="first_name" placeholder="Enter First name"><br><br>
<label class="from-lable" for"type">Last Name:</label>
<input type="text" name="last_name" placeholder="Enter Last name"><br><br>
<label class="from-lable" for"type">Email Id:</label>
<input type="email" name="email" placeholder="Enter Email Address"><br><br>
<label class="from-lable" for"type">Mobile no:</label>
<input type="text" name="mobile" placeholder="Enter Mobile no"><br><br>
<label class="from-lable" for"type">Password:</label>
<input type="password" name="password" placeholder="Enter Password"><br><br>
<button type="submit">Register</button>
</fieldset>
</div>


<style>html {
    height: 100%;
    width: 100%;
}

 body {
    background:#87CEEB; 
    background-size: cover;
    font-family: 'Droid Serif', serif;
} 

#container {
    background: rgba(3, 3, 55, 0.5);
    width: 20.75rem;
    height: 28rem;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}

h1 {
    text-align: center;
    vertical-align: middle;
    line-height: 3rem;
    height: 3rem;
    background: rgba(3, 3, 55, 0.7);
    font-size: 1.4rem;
    color: #d3d3d3;
}

fieldset {
    border: 0;
    text-align: center;
}

button {
    background: rgba(235, 30, 54, 1);
    border: 0;
    display: block;
    width: 30%;
    margin: 0 auto;
    color: black;
    padding: 0.5rem;
    cursor: pointer;
}

input {
    background: transparent;
    border: 0;
    border-left: 4px solid;
    border-color: #FF0000;
    padding: 10px;
    color: white;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus {
    outline: 0;
    background: rgba(235, 30, 54, 0.3);
    border-radius: 1.2rem;
    border-color: transparent;
}

::placeholder {
    color: #d3d3d3;
}

/*Media queries */

@media all and (min-width: 481px) and (max-width: 568px) {
    #container {
        margin-top: 10%;
        margin-bottom: 10%;
    }
}
    @media all and (min-width: 569px) and (max-width: 768px) {
        #container {
            margin-top: 5%;
            margin-bottom: 5%;
        }
    }
ccc</style>

</form>

</body>
</html>