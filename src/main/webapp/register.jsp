
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register to JTA-Bank</title>
</head>
<body>

<h1>Create New Account</h1>

<% if (request.getAttribute("error") != null) { %>
<p style="color: red"><%= request.getAttribute("error") %>
</p>
<% } %>

<form action="register" method="post">
    <table>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <th>Email</th>
            <td><input type="text" name="email" required></td>
        </tr>
        <tr>
            <th>Password</th>
            <td><input type="password" name="password" required></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Register"></td>
        </tr>
    </table>
</form>

<p>Already have an account? <a href="login.jsp">Go to login</a></p>

</body>
</html>
