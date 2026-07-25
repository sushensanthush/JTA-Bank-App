<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JTA-Bank | Transaction History</title>
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

<h1>History for ${requestScope.accountNo}</h1>


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
            <td>${transaction.type}</td>
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

</body>
</html>
