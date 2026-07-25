<%@ page import="java.util.List" %>
<%@ page import="lk.susa.ee.bank.entity.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA Bank | Dashboard</title>
    <style>
        :root {
            --primary-color: #1e3c72;
            --secondary-color: #2a5298;
            --accent-color: #00b4d8;
            --bg-color: #f8f9fa;
            --card-bg: #ffffff;
            --text-main: #333333;
            --text-muted: #666666;
            --border-color: #e0e0e0;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: var(--bg-color);
            color: var(--text-main);
            line-height: 1.6;
        }

        /* Navigation Bar */
        nav {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            padding: 1rem 2rem;
            display: flex;
            justify-content: flex-end;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        nav a {
            color: #ffffff;
            text-decoration: none;
            margin-left: 1.5rem;
            font-weight: 500;
            font-size: 0.95rem;
            transition: color 0.2s ease;
        }

        nav a:hover {
            color: var(--accent-color);
        }

        /* Main Container */
        .container {
            max-width: 1000px;
            margin: 2.5rem auto;
            padding: 0 1.5rem;
        }

        h1 {
            font-size: 1.8rem;
            color: var(--primary-color);
            margin-bottom: 0.5rem;
        }

        h2 {
            font-size: 1.2rem;
            color: var(--text-muted);
            margin-bottom: 1.5rem;
            font-weight: 400;
        }

        /* Empty State */
        .empty-state {
            background: var(--card-bg);
            padding: 2rem;
            border-radius: 8px;
            text-align: center;
            border: 1px solid var(--border-color);
            box-shadow: 0 2px 4px rgba(0,0,0,0.02);
        }

        .empty-state a {
            color: var(--secondary-color);
            text-decoration: none;
            font-weight: 600;
        }

        .empty-state a:hover {
            text-decoration: underline;
        }

        /* Account Cards Grid */
        .accounts-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 1.5rem;
        }

        .account-card {
            background: var(--card-bg);
            border-radius: 8px;
            padding: 1.5rem;
            border: 1px solid var(--border-color);
            box-shadow: 0 4px 6px rgba(0,0,0,0.02);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .account-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.05);
        }

        .account-header {
            font-size: 1.1rem;
            color: var(--primary-color);
            margin-bottom: 0.75rem;
            border-bottom: 1px solid var(--border-color);
            padding-bottom: 0.5rem;
        }

        .account-body {
            margin-bottom: 1.25rem;
        }

        .account-type {
            font-size: 0.9rem;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 0.25rem;
        }

        .account-balance {
            font-size: 1.4rem;
            font-weight: 600;
            color: var(--text-main);
        }

        .account-footer {
            border-top: 1px solid var(--border-color);
            padding-top: 0.75rem;
        }

        .account-footer a {
            color: var(--secondary-color);
            text-decoration: none;
            font-size: 0.9rem;
            font-weight: 500;
        }

        .account-footer a:hover {
            text-decoration: underline;
        }
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
    <h1>Welcome, ${sessionScope.userName}</h1>
    <h2>Your Accounts Overview</h2>

    <%
        List<Account> accounts = (List<Account>) request.getAttribute("accounts");
        if (accounts == null || accounts.isEmpty()) {
    %>
    <div class="empty-state">
        <p>You don't have any accounts yet. <a href="create-account">Create New Account</a></p>
    </div>
    <%
    } else {
    %>
    <div class="accounts-grid">
        <%
            for (Account account : accounts) {
        %>
        <div class="account-card">
            <div>
                <div class="account-header">
                    <strong>Acc No: <%= account.getAccNo() %></strong>
                </div>
                <div class="account-body">
                    <div class="account-type"><%= account.getAccountType() %></div>
                    <div class="account-balance">LKR <%= account.getBalance() %></div>
                </div>
            </div>
            <div class="account-footer">
                <a href="history?accNo=<%= account.getAccNo() %>">View Transaction History</a>
            </div>
        </div>
        <%
            }
        %>
    </div>
    <%
        }
    %>

</div>

</body>
</html>