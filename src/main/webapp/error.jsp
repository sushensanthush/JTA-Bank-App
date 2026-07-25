<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
</head>
<body>

<h1>Something went wrong!</h1>
<br>
<div><%=exception != null ? exception.getMessage() : "An unexpected error occurred." %></div>
<button onclick="window.location='index.jsp'">Go to Home</button>

</body>
</html>
