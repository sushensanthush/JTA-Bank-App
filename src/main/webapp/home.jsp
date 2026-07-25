<%@ page import="java.util.List" %>
<%@ page import="lk.susa.ee.bank.entity.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA Bank | Dashboard</title>
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

        .container { max-width: 900px; width: 100%; margin: 2.5rem auto; padding: 0 1rem; }
        h1 { color: var(--primary); font-size: 1.8rem; margin-bottom: 0.5rem; }
        h2 { color: #64748b; font-size: 1.1rem; font-weight: 500; margin-bottom: 1.5rem; }

        .empty-state { background: var(--card-bg); padding: 2rem; border-radius: 12px; border: 1px solid var(--border); text-align: center; }
        .empty-state a { color: var(--accent); text-decoration: none; font-weight: 600; }
        .empty-state a:hover { text-decoration: underline; }

        .accounts-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(280px, 1fr)); gap: 1.5rem; }

        .account-card {
            background: var(--card-bg);
            padding: 1.5rem;
            border-radius: 12px;
            box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05);
            border: 1px solid var(--border);
            display: flex;
            flex-direction: column;
            gap: 0.75rem;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .account-card:hover { transform: translateY(-2px); box-shadow: 0 10px 15px -3px rgba(0,0,0,0.05); }
        .account-card strong { font-size: 1.1rem; color: var(--primary); }
        .account-type { font-size: 0.85rem; background: #e0f2fe; color: #0369a1; padding: 0.2rem 0.6rem; border-radius: 4px; width: fit-content; font-weight: 600; }
        .account-balance { font-size: 1.4rem; font-weight: 700; color: #059669; margin: 0.25rem 0; }

        .account-card a {
            margin-top: auto;
            color: var(--accent);
            text-decoration: none;
            font-size: 0.9rem;
            font-weight: 600;
        }
        .account-card a:hover { text-decoration: underline; }
    </style>
</head>
<body>

<nav>
    <a href="dashboard" class="active">Dashboard</a>
    <a href="deposit">Deposit</a>
    <a href="withdraw">Withdraw</a>
    <a href="transfer">Transfer</a>
    <a href="create-account">New Account</a>
    <a href="logout">Logout</a>
</nav>

<div class="container">
    <h1>Welcome, ${sessionScope.userName}</h1>
    <h2>Your Accounts Summary</h2>

    <%
        List<Account> accounts = (List<Account>) request.getAttribute("accounts");
        if (accounts == null || accounts.isEmpty()) { %>
    <div class="empty-state">
        <p>You don't have any Accounts yet. <a href="create-account">Create New Account</a></p>
    </div>
    <%
    } else {
    %>
    <div class="accounts-grid">
        <%
            for (Account account : accounts) {%>
        <div class="account-card">
            <strong>Account: <%= account.getAccNo() %></strong>
            <div class="account-type"><%= account.getAccountType() %></div>
            <div class="account-balance">LKR <%= account.getBalance() %></div>
            <div>
                <a href="history?accountNo=<%=account.getAccNo()%>">View Transaction History &rarr;</a>
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