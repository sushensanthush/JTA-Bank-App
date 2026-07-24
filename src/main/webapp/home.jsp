<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  if (session == null || session.getAttribute("userEmail") == null) {
    response.sendRedirect("login.jsp");
    return;
  }
%>
<html>
<head>
  <title>JTA Bank | Dashboard</title>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
    body { background-color: #f4f6f9; color: #333; }
    nav { background-color: #0f172a; padding: 16px 32px; display: flex; gap: 24px; align-items: center; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
    nav a { color: #cbd5e1; text-decoration: none; font-size: 14px; font-weight: 500; transition: color 0.2s; }
    nav a:hover { color: #ffffff; }
    nav a:last-child { margin-left: auto; color: #fca5a5; }
    nav a:last-child:hover { color: #f87171; }
    .main-content { padding: 40px; }
    h2 { color: #1e293b; margin-bottom: 10px; }
  </style>
</head>
<body>

<nav>
  <a href="dashboard.jsp">Dashboard</a>
  <a href="deposit.jsp">Deposit</a>
  <a href="withdraw.jsp">Withdraw</a>
  <a href="transfer.jsp">Transfer</a>
  <a href="register.jsp">New Account</a>
  <a href="logout">Logout</a>
</nav>

<div class="main-content">
  <h2>Welcome Back, <%= session.getAttribute("userEmail") %>!</h2>
  <p>This is your JTA-Bank secure account dashboard.</p>
</div>

</body>
</html>