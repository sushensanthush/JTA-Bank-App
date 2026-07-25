<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JTA Banking App</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Poppins', sans-serif; }
        body { background-color: #f4f6f9; color: #333; display: flex; justify-content: center; align-items: center; height: 100vh; }
        .card { background: #ffffff; padding: 40px; border-radius: 16px; box-shadow: 0 10px 25px rgba(0,0,0,0.05); width: 100%; max-width: 400px; text-align: center; }
        .logo { font-size: 28px; font-weight: 700; color: #2563eb; margin-bottom: 10px; }
        h1 { font-size: 22px; color: #1e293b; margin-bottom: 8px; }
        p { color: #64748b; font-size: 14px; margin-bottom: 30px; }
        .btn { display: block; width: 100%; padding: 12px; border-radius: 8px; font-size: 14px; font-weight: 600; text-decoration: none; margin-bottom: 12px; transition: 0.2s; }
        .btn-primary { background-color: #2563eb; color: white; }
        .btn-primary:hover { background-color: #1d4ed8; }
        .btn-secondary { background-color: #f1f5f9; color: #475569; }
        .btn-secondary:hover { background-color: #e2e8f0; }
    </style>
</head>
<body>

<div class="card">
    <div class="logo">JTA BANK</div>
    <h1>Welcome to JTA Bank</h1>
    <p>Your trusted partner for secure banking.</p>

    <a href="login.jsp" class="btn btn-primary">Login to Account</a>
    <a href="register.jsp" class="btn btn-secondary">Create New Account</a>
</div>

</body>
</html>