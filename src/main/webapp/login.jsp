<%--
  Created by IntelliJ IDEA.
  User: Susa
  Date: 7/23/2026
  Time: 5:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login to JTA-Bank</title>
</head>
<body>

<h1>Hi there, Welcome Back!</h1>

<% if (request.getAttribute("error") != null) {%>
<p style="color: red"><%= request.getAttribute("error")%>
</p>
<% } %>


<form action="register" method="post">

    <label for="email">Please Enter Your Email Address</label>
    <input type="text"  id="email" name="email">

    <br>

    <label for="password">Please Enter Your Password</label>
    <input type="password"  id="password" name="password">

    <br>
    <button type="submit">Login</button>

</form>

<p>Don't have an account? <a href="register.jsp">Create a new account</a></p>

</body>
</html>
