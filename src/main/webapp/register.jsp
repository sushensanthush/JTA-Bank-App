<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Account | JTA-Bank</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        body { background-color: #f4f6f9; display: flex; justify-content: center; align-items: center; height: 100vh; color: #333; }
        .container { background: #ffffff; padding: 40px; border-radius: 12px; border: 1px solid #e2e8f0; box-shadow: 0 10px 25px rgba(0,0,0,0.05); width: 400px; }
        h1 { color: #1e293b; font-size: 22px; margin-bottom: 20px; font-weight: 600; text-align: center; }
        .error-msg { background-color: #fef2f2; border: 1px solid #fecaca; color: #dc2626; padding: 10px; border-radius: 6px; font-size: 14px; margin-bottom: 16px; }
        label { display: block; font-size: 13px; font-weight: 500; color: #475569; margin-bottom: 6px; }
        input[type="text"], input[type="password"] { width: 100%; padding: 11px 14px; border: 1px solid #cbd5e1; border-radius: 6px; font-size: 14px; margin-bottom: 16px; outline: none; transition: border-color 0.2s, box-shadow 0.2s; }
        input[type="text"]:focus, input[type="password"]:focus { border-color: #0f172a; box-shadow: 0 0 0 3px rgba(15, 23, 42, 0.1); }
        button { width: 100%; padding: 12px; background-color: #0f172a; color: white; border: none; border-radius: 6px; font-size: 15px; font-weight: 500; cursor: pointer; transition: background 0.2s; }
        button:hover { background-color: #1e293b; }
        p { text-align: center; font-size: 14px; color: #64748b; margin-top: 20px; }
        a { color: #0f172a; text-decoration: none; font-weight: 500; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="container">
    <h1>Create New Account</h1>

    <% if (request.getAttribute("error") != null) { %>
    <div class="error-msg"><%= request.getAttribute("error") %></div>
    <% } %>

    <form action="register" method="post">
        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" placeholder="John Doe" required>

        <label for="email">Email Address</label>
        <input type="text" id="email" name="email" placeholder="name@example.com" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="••••••••" required>

        <button type="submit">Register</button>
    </form>

    <p>Already have an account? <a href="login.jsp">Sign in</a></p>
</div>

</body>
</html>