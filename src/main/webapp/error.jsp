<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
    <style>
        :root {
            --primary: #0f172a;
            --accent: #2563eb;
            --accent-hover: #1d4ed8;
            --bg: #f8fafc;
            --card-bg: #ffffff;
            --text: #334155;
            --border: #cbd5e1;
            --error-text: #dc2626;
        }
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        body { background-color: var(--bg); color: var(--text); display: flex; justify-content: center; align-items: center; min-height: 100vh; padding: 1rem; }

        .error-card {
            background: var(--card-bg);
            padding: 3rem 2.5rem;
            border-radius: 12px;
            box-shadow: 0 10px 25px -5px rgba(0,0,0,0.05);
            border: 1px solid var(--border);
            text-align: center;
            max-width: 420px;
            width: 100%;
        }
        h1 { color: var(--error-text); font-size: 1.6rem; margin-bottom: 1rem; font-weight: 700; }
        .message-box {
            background: #fef2f2;
            color: #991b1b;
            padding: 1rem;
            border-radius: 8px;
            margin-bottom: 1.5rem;
            font-size: 0.95ln;
            border: 1px solid #fecaca;
            word-break: break-word;
        }
        button {
            background-color: var(--accent);
            color: white;
            border: none;
            padding: 0.85rem 1.5rem;
            font-size: 1rem;
            font-weight: 600;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.2s;
        }
        button:hover { background-color: var(--accent-hover); }
    </style>
</head>
<body>

<div class="error-card">
    <h1>Something went wrong!</h1>
    <br>
    <div class="message-box"><%=exception != null ? exception.getMessage() : "An unexpected error occurred." %></div>
    <button onclick="window.location='index.jsp'">Go to Home</button>
</div>

</body>
</html>