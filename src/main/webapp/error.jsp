<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>System Error | JTA Bank</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        body { background-color: #f4f6f9; display: flex; justify-content: center; align-items: center; height: 100vh; color: #333; }
        .container { background: #ffffff; padding: 40px; border-radius: 12px; border: 1px solid #e2e8f0; box-shadow: 0 10px 25px rgba(0,0,0,0.05); text-align: center; width: 440px; }
        h1 { color: #1e293b; font-size: 20px; line-height: 1.4; margin-bottom: 16px; font-weight: 600; }
        .error-details { background-color: #fef2f2; border: 1px solid #fecaca; color: #dc2626; padding: 12px; border-radius: 6px; font-size: 13px; margin-bottom: 24px; word-break: break-all; text-align: left; }
        button { width: 100%; padding: 12px; background-color: #0f172a; color: white; border: none; border-radius: 6px; font-size: 15px; font-weight: 500; cursor: pointer; transition: background 0.2s; }
        button:hover { background-color: #1e293b; }
    </style>
</head>
<body>

<div class="container">
    <h1>An unexpected error has occurred. Please try again in a moment.</h1>

    <div class="error-details">
        <strong>Error:</strong> <%=exception != null && exception.getMessage() != null ? exception.getMessage() : "An unexpected system error occurred."%>
    </div>

    <button onclick="window.location='index.jsp'">Go to Home</button>
</div>

</body>
</html>