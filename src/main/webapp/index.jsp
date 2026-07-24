<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA Banking App | Welcome</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        body { background-color: #f4f6f9; display: flex; justify-content: center; align-items: center; height: 100vh; color: #333; }
        .container { background: #ffffff; padding: 40px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.05); text-align: center; width: 380px; }
        h1 { color: #1e293b; font-size: 24px; margin-bottom: 24px; font-weight: 600; }
        .btn { display: block; width: 100%; padding: 12px; margin-bottom: 12px; border-radius: 4px; font-size: 15px; font-weight: 500; text-decoration: none; text-align: center; transition: background 0.2s; }
        .btn-primary { background-color: #0f172a; color: #ffffff; }
        .btn-primary:hover { background-color: #1e293b; }
        .btn-secondary { background-color: #e2e8f0; color: #334155; }
        .btn-secondary:hover { background-color: #cbd5e1; }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to JTA Bank</h1>
    <a href="login.jsp" class="btn btn-primary">Login</a>
    <a href="register.jsp" class="btn btn-secondary">Register</a>
</div>
</body>
</html>