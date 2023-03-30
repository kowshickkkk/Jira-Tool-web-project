<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<style>
body {
  background: url(http://img6.uploadhouse.com/fileuploads/17737/17737075bdad5cfa9423bb2c3c2beee695c72bb8.jpg);
  color: #B1B1B1;
  margin: 15px auto 0;
  width: 410px;
}
</style>
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


  <h2 style="text-align: center;">WELCOME to Jira Tool!</h2>

  <p>
    Please try out the features provided in this basic example.<br>
  </p>

  <h2>Got questions or need help?</h2>
  <table style="text-align: center;">
    <thead>
      <tr>
        <th>Product</th>
        <th>Cost&nbsp&nbsp</th>
        <th>Really?</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>&nbsp&nbspCreate Jira</td>
        <td>Free</td>
        <td>YES!</td>
      </tr>
      <tr>
        <td>View/Edit</td>
        <td>Free</td>
        <td>YES!</td>
      </tr>
    </tbody>
  </table>

  <h2>Found a bug?</h2>

  <p>
    If you think you have found a bug please create an issue on the <a href="https://github.com/kowshickkkk/Jira-Tool-web-project">GitHub repo</a> to report it to the developers.
  </p>

  <h2>Finally ...</h2>

  <p>
    Don't forget to check out our  product </p>
  <p>
    To create any issue you can choose create Jira option.
    <br>To view any existing issues choose view option
  </p>
 
</body>
</html>