<%@ page import="static java.awt.Color.red" %><%--
  Created by IntelliJ IDEA.
  User: Susa
  Date: 7/23/2026
  Time: 5:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register to JTA-Bank</title>
</head>
<body>

<h1>Create New Account</h1>

<% if (request.getAttribute("error") != null) {%>
<p style="color: red"><%= request.getAttribute("error")%>
</p>
<% } %>


<form action="register" method="post">

    <label for="username">Please Enter Your Name</label>
    <input type="text"  id="name" name="name">

    <br>

    <label for="email">Please Enter Your Email Address</label>
    <input type="text"  id="email" name="email">

    <br>

    <label for="password">Please Enter Your Password</label>
    <input type="password"  id="password" name="password">

    <br>
    <button type="submit">Register</button>

</form>

<p>Already have an account?<a href="login.jsp" Go to login</a></p>

</body>
</html>
