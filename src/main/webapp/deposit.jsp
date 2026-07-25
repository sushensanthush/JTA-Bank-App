<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.susa.ee.bank.entity.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA Bank | Deposit</title>
    <style>
        :root {
            --primary: #0f172a;
            --primary-light: #1e293b;
            --accent: #2563eb;
            --accent-hover: #1d4ed8;
            --bg: #f8fafc;
            --card-bg: #ffffff;
            --text: #334155;
            --text-heading: #0f172a;
            --border: #e2e8f0;
            --error-bg: #fef2f2;
            --error-text: #dc2626;
        }
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        body { background-color: var(--bg); color: var(--text); display: flex; flex-direction: column; min-height: 100vh; }

        nav {
            background-color: var(--primary);
            padding: 1rem 2rem;
            display: flex;
            gap: 1.5rem;
            align-items: center;
            box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
        }
        nav a {
            color: #94a3b8;
            text-decoration: none;
            font-weight: 500;
            font-size: 0.95rem;
            transition: color 0.2s;
        }
        nav a:hover, nav a.active { color: #ffffff; }

        .container {
            max-width: 500px;
            width: 100%;
            margin: 3rem auto;
            background: var(--card-bg);
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 10px 15px -3px rgba(0,0,0,0.05), 0 4px 6px -4px rgba(0,0,0,0.05);
            border: 1px solid var(--border);
        }
        h1 { color: var(--text-heading); font-size: 1.75rem; margin-bottom: 1.5rem; text-align: center; }

        .error-msg {
            background-color: var(--error-bg);
            color: var(--error-text);
            padding: 0.75rem 1rem;
            border-radius: 6px;
            margin-bottom: 1.25rem;
            font-size: 0.9rem;
            border: 1px solid #fecaca;
        }

        table { width: 100%; border-collapse: separate; border-spacing: 0 1rem; }
        th { text-align: left; font-size: 0.9rem; color: #64748b; font-weight: 600; width: 35%; padding-right: 1rem; }
        td { width: 65%; }

        select, input[type="number"], input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 0.75rem 1rem;
            border: 1px solid var(--border);
            border-radius: 8px;
            font-size: 1rem;
            color: var(--text);
            background-color: #f8fafc;
            transition: all 0.2s;
        }
        select:focus, input:focus {
            outline: none;
            border-color: var(--accent);
            background-color: #ffffff;
            box-shadow: 0 0 0 3px rgba(37,99,235,0.1);
        }
        input[type="submit"] {
            background-color: var(--accent);
            color: white;
            border: none;
            padding: 0.75rem 1.5rem;
            font-size: 1rem;
            font-weight: 600;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.2s;
            margin-top: 1rem;
        }
        input[type="submit"]:hover { background-color: var(--accent-hover); }
    </style>
</head>
<body>

<nav>
    <a href="dashboard">Dashboard</a>
    <a href="deposit" class="active">Deposit</a>
    <a href="withdraw">Withdraw</a>
    <a href="transfer">Transfer</a>
    <a href="create-account">New Account</a>
    <a href="logout">Logout</a>
</nav>

<div class="container">
    <h1>Deposit Funds</h1>
    <% if (request.getAttribute("error") != null) { %>
    <div class="error-msg"><%= request.getAttribute("error") %></div>
    <% } %>

    <form action="deposit" method="post">
        <table>
            <tr>
                <th>Account No</th>
                <td>
                    <select name="accountNo" required>
                        <option value="" disabled selected>Select Account</option>
                        <c:forEach var="account" items="${requestScope.accounts}">
                            <option value="${account.accNo}">${account.accNo}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Amount</th>
                <td>
                    <input type="number" step="0.01" min="0.01" name="amount" required placeholder="0.00">
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Deposit"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>