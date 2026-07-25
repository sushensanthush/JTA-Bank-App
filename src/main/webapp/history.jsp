<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA-Bank | Transaction History</title>
    <style>
        :root {
            --primary: #0f172a;
            --accent: #2563eb;
            --bg: #f8fafc;
            --card-bg: #ffffff;
            --text: #334155;
            --border: #cbd5e1;
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
        nav a:hover { color: #ffffff; }

        .container { max-width: 960px; width: 100%; margin: 2.5rem auto; padding: 0 1.5rem; flex: 1; }
        h1 { color: var(--primary); font-size: 1.75rem; margin-bottom: 1.5rem; font-weight: 700; }

        .table-wrapper {
            background: var(--card-bg);
            border-radius: 12px;
            box-shadow: 0 10px 25px -5px rgba(0,0,0,0.05);
            border: 1px solid var(--border);
            overflow: hidden;
        }

        table { width: 100%; border-collapse: collapse; text-align: left; }
        th { background-color: #f1f5f9; color: #475569; padding: 1rem 1.25rem; font-size: 0.85rem; font-weight: 700; text-transform: uppercase; letter-spacing: 0.05em; border-bottom: 1px solid var(--border); }
        td { padding: 1rem 1.25rem; border-bottom: 1px solid var(--border); font-size: 0.95rem; color: var(--text); }
        tr:last-child td { border-bottom: none; }
        tr:hover td { background-color: #f8fafc; }
    </style>
</head>
<body>

<nav>
    <a href="dashboard">Dashboard</a>
    <a href="deposit">Deposit</a>
    <a href="withdraw">Withdraw</a>
    <a href="transfer">Transfer</a>
    <a href="create-account">New Account</a>
    <a href="logout">Logout</a>
</nav>

<div class="container">
    <h1>History for ${requestScope.accountNo}</h1>

    <div class="table-wrapper">
        <table>
            <tr>
                <th>Date/Time</th>
                <th>Type</th>
                <th>Amount</th>
                <th>Related Account</th>
                <th>Balance After</th>
            </tr>

            <c:forEach var="transaction" items="${requestScope.transactions}">
                <tr>
                    <td>${transaction.timestamp}</td>
                    <td><strong>${transaction.type}</strong></td>
                    <td>
                        <fmt:formatNumber value="${transaction.amount}" type="number" minFractionDigits="2"
                                          maxFractionDigits="2" groupingUsed="true"/>
                    </td>
                    <td>${transaction.relatedAccountNo eq null ? "-" : transaction.relatedAccountNo}</td>
                    <td>
                        <fmt:formatNumber value="${transaction.balanceAfter}" type="number" minFractionDigits="2"
                                          maxFractionDigits="2" groupingUsed="true"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
</html>