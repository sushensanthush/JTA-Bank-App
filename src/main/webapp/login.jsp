
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA-Bank | Login</title>
</head>
<body>

<h1>Login</h1>

<% if (request.getAttribute("error") != null) { %>
<p style="color: red"><%= request.getAttribute("error") %>
</p>
<% } %>

<form action="login" method="post">
    <table>
        <tr>
            <th>Email</th>
            <td>
                <input type="email" id="email" name="email" required>
            </td>
        </tr>
        <tr>
            <th>Password</th>
            <td>
                <input type="password" id="password" name="password" required>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" value="Login">
            </td>
        </tr>
    </table>
</form>

<p>Don't have an account? <a href="register.jsp">Create new account</a></p>

</body>
</html>
