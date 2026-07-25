<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA Banking App</title>
    <style>
        :root {
            --primary: #0f172a;
            --accent: #2563eb;
            --accent-hover: #1d4ed8;
            --bg: #f8fafc;
            --card-bg: #ffffff;
            --text: #334155;
            --border: #e2e8f0;
        }
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        body { background-color: var(--bg); color: var(--text); display: flex; justify-content: center; align-items: center; min-height: 100vh; }

        .welcome-card {
            background: var(--card-bg);
            padding: 3rem;
            border-radius: 16px;
            box-shadow: 0 10px 25px -5px rgba(0,0,0,0.05);
            border: 1px solid var(--border);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        h1 { color: var(--primary); font-size: 1.8rem; margin-bottom: 2rem; }

        .btn-group { display: flex; flex-direction: column; gap: 1rem; }

        .btn-login {
            background-color: var(--accent);
            color: white;
            padding: 0.75rem 1.5rem;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            transition: background-color 0.2s;
        }
        .btn-login:hover { background-color: var(--accent-hover); }

        .btn-register {
            background-color: transparent;
            color: var(--accent);
            border: 1px solid var(--accent);
            padding: 0.75rem 1.5rem;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.2s;
        }
        .btn-register:hover { background-color: #eff6ff; }
    </style>
</head>
<body>

<div class="welcome-card">
    <h1>Welcome to JTA Bank</h1>
    <div class="btn-group">
        <a href="login.jsp" class="btn-login">Login</a>
        <a href="register.jsp" class="btn-register">Register</a>
    </div>
</div>

</body>
</html>