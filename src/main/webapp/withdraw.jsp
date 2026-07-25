<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.susa.ee.bank.entity.Account" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA Bank | Withdraw</title>
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

<div>
    <h1>Withdraw</h1>
    <% if (request.getAttribute("error") != null) { %>
    <p style="color: red"><%= request.getAttribute("error") %>
    </p>
    <% } %>

    <form action="withdraw" method="post">
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
                    <input type="number" step="0.01" min="0.01" name="amount" required>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Withdraw"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
