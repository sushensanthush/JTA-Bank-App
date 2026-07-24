<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>System Error | JTA Bank</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        body { background-color: #f4f6f9; display: flex; justify-content: center; align-items: center; height: 100vh; color: #333; }
        .container { background: #ffffff; padding: 40px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.05); text-align: center; width: 420px; }
        h1 { color: #1e293b; font-size: 18px; line-height: 1.5; margin-bottom: 24px; font-weight: 500; }
        button { padding: 11px 24px; background-color: #0f172a; color: white; border: none; border-radius: 4px; font-size: 14px; font-weight: 500; cursor: pointer; }
        button:hover { background-color: #1e293b; }
    </style>
</head>
<body>

<div class="container">
    <h1>An unexpected error has occurred. Please try again in a moment.</h1>
    <button onclick="window.location='index.jsp'">Go to Home</button>
</div>

</body>
</html>