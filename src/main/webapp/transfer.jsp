<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.susa.ee.bank.entity.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA Bank | Transfer</title>
    <style>
        :root {
            --primary: #0f172a;
            --accent: #2563eb;
            --accent-hover: #1d4ed8;
            --bg: #f8fafc;
            --card-bg: #ffffff;
            --text: #334155;
            --border: #e2e8f0;
            --error-bg: #fef2f2;
            --error-text: #dc2626;
        }
        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        body { background-color: var(--bg); color: var(--text); min-height: 100vh; display: flex; flex-direction: column; }

        nav {
            background-color: var(--primary);
            padding: 1rem 2rem;
            display: flex;
            gap: 1.5rem;
            align-items: center;
            box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
        }
        nav a { color: #94a3b8; text-decoration: none; font-weight: 500; font-size: 0.95rem; }
        nav a:hover, nav a.active { color: #ffffff; }

        .container {
            max-width: 520px;
            width: 100%;
            margin: 3rem auto;
            background: var(--card-bg);
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 10px 15px -3px rgba(0,0,0,0.05);
            border: 1px solid var(--border);
        }
        h1 { color: var(--primary); font-size: 1.75rem; margin-bottom: 1.5rem; text-align: center; }

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
        th { text-align: left; font-size: 0.85rem; color: #64748b; font-weight: 600; width: 40%; padding-right: 0.5rem; }
        td { width: 60%; }

        select, input[type="number"], input[type="text"] {
            width: 100%;
            padding: 0.75rem 1rem;
            border: 1px solid var(--border);
            border-radius: 8px;
            font-size: 1rem;
            color: var(--text);
            background-color: #f8fafc;
            transition: all 0.2s;
        }
        select:focus, input:focus { outline: none; border-color: var(--accent); background-color: #ffffff; box-shadow: 0 0 0 3px rgba(37,99,235,0.1); }

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
    <a href="deposit">Deposit</a>
    <a href="withdraw">Withdraw</a>
    <a href="transfer" class="active">Transfer</a>
    <a href="create-account">New Account</a>
    <a href="logout">Logout</a>
</nav>

<div class="container">
    <h1>Transfer Funds</h1>
    <% if (request.getAttribute("error") != null) { %>
    <div class="error-msg"><%= request.getAttribute("error") %></div>
    <% } %>

    <form action="transfer" method="post">
        <table>
            <tr>
                <th>Source Account</th>
                <td>
                    <select name="sourceAccountNo" required>
                        <option value="" disabled selected>Select Account</option>
                        <c:forEach var="account" items="${requestScope.accounts}">
                            <option value="${account.accNo}">${account.accNo}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Destination Account</th>
                <td>
                    <input type="text" name="destinationAccountNo" required placeholder="Account number">
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
                <td><input type="submit" value="Transfer"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>