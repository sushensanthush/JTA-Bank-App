<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA-Bank | Login</title>
    <style>
        :root {
            --primary: #0f172a;
            --accent: #2563eb;
            --accent-hover: #1d4ed8;
            --bg: #f8fafc;
            --card-bg: #ffffff;
            --text: #334155;
            --border: #cbd5e1;
            --error-bg: #fef2f2;
            --error-text: #dc2626;
        }
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        body { background-color: var(--bg); color: var(--text); display: flex; justify-content: center; align-items: center; min-height: 100vh; padding: 1rem; }

        .card {
            background: var(--card-bg);
            width: 100%;
            max-width: 420px;
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 10px 25px -5px rgba(0,0,0,0.05);
            border: 1px solid var(--border);
        }
        h1 { color: var(--primary); font-size: 1.75rem; margin-bottom: 1.5rem; text-align: center; font-weight: 700; }

        .error-box {
            background-color: var(--error-bg);
            color: var(--error-text);
            padding: 0.85rem 1rem;
            border-radius: 8px;
            margin-bottom: 1.5rem;
            font-size: 0.9rem;
            border: 1px solid #fecaca;
            text-align: center;
        }

        table { width: 100%; border-collapse: collapse; }
        tr { display: block; margin-bottom: 1.25rem; }
        th { display: block; text-align: left; font-size: 0.9rem; color: #475569; font-weight: 600; margin-bottom: 0.5rem; width: 100%; }
        td { display: block; width: 100%; }

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 0.8rem 1rem;
            border: 1px solid var(--border);
            border-radius: 8px;
            font-size: 1rem;
            color: var(--text);
            background-color: #ffffff;
            transition: all 0.2s;
        }
        input:focus { outline: none; border-color: var(--accent); box-shadow: 0 0 0 3px rgba(37,99,235,0.15); }

        input[type="submit"] {
            background-color: var(--accent);
            color: white;
            border: none;
            padding: 0.85rem;
            font-size: 1rem;
            font-weight: 600;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.2s;
            margin-top: 0.5rem;
        }
        input[type="submit"]:hover { background-color: var(--accent-hover); }

        .footer-text { text-align: center; margin-top: 1.5rem; font-size: 0.9rem; color: #64748b; }
        .footer-text a { color: var(--accent); text-decoration: none; font-weight: 600; }
        .footer-text a:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="card">
    <h1>Login</h1>

    <% if (request.getAttribute("error") != null) { %>
    <div class="error-box"><%= request.getAttribute("error") %></div>
    <% } %>

    <form action="login" method="post">
        <table>
            <tr>
                <th>Email</th>
                <td>
                    <input type="email" id="email" name="email" required placeholder="name@example.com">
                </td>
            </tr>
            <tr>
                <th>Password</th>
                <td>
                    <input type="password" id="password" name="password" required placeholder="••••••••">
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

    <div class="footer-text">
        Don't have an account? <a href="register.jsp">Create new account</a>
    </div>
</div>

</body>
</html>