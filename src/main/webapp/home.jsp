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
        nav a:hover, nav a.active { color: #ffffff; }

        .container { max-width: 960px; width: 100%; margin: 2.5rem auto; padding: 0 1.5rem; flex: 1; }
        h1 { color: var(--primary); font-size: 1.85rem; margin-bottom: 0.25rem; font-weight: 700; }
        h2 { color: #64748b; font-size: 1.1rem; font-weight: 500; margin-bottom: 2rem; }

        .no-accounts-card { background: var(--card-bg); padding: 2.5rem; border-radius: 12px; border: 1px solid var(--border); text-align: center; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.02); }
        .no-accounts-card a { color: var(--accent); text-decoration: none; font-weight: 600; }
        .no-accounts-card a:hover { text-decoration: underline; }

        .accounts-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(280px, 1fr)); gap: 1.5rem; }

        .account-card {
            background: var(--card-bg);
            padding: 1.75rem;
            border-radius: 12px;
            box-shadow: 0 10px 25px -5px rgba(0,0,0,0.05);
            border: 1px solid var(--border);
            display: flex;
            flex-direction: column;
            gap: 0.85rem;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .account-card:hover { transform: translateY(-3px); box-shadow: 0 15px 30px -5px rgba(0,0,0,0.08); }
        .account-card strong { font-size: 1.15rem; color: var(--primary); }
        .acc-type-badge { font-size: 0.8rem; background: #e0f2fe; color: #0369a1; padding: 0.25rem 0.65rem; border-radius: 6px; width: fit-content; font-weight: 600; text-transform: uppercase; }
        .acc-balance { font-size: 1.5rem; font-weight: 700; color: #059669; margin: 0.25rem 0; }

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

    <div class="no-accounts-card">
        <p>You don't have any Accounts yet. <a href="create-account">Create New Account</a></p>
    </div>
    <%
    } else {
    %>
    <div class="accounts-grid">
        <%
            for (Account account : accounts) {%>

        <div class="account-card">
            <strong><%= account.getAccNo() %></strong>
            <div class="acc-type-badge"><%= account.getAccountType() %></div>
            <div class="acc-balance">LKR <%= account.getBalance() %></div>
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