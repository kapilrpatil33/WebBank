<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kapil.customer.Customer"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Accounts</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 20px;
        margin: 0;
    }
    h1 {
        color: #007BFF;
        margin-bottom: 20px;
    }
    table {
        border-collapse: collapse;
        width: 80%;
        margin-bottom: 20px;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: left;
    }
    th {
        background-color: #007BFF;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
    }
    .button-container {
        display: flex;
        justify-content: center;
    }
    a {
        background-color: #007BFF;
        color: white;
        padding: 10px 20px;
        margin: 5px;
        border-radius: 4px;
        text-decoration: none;
        text-align: center;
    }
    a:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
	<%Customer customer = (Customer) request.getAttribute("customer");
	if(customer==null) {%>
    <h1>View Account</h1>
    <form action="viewAccount" method="post">
        <input type="text" name="accNo" placeholder="Enter Account Number" required>
        <input type="submit" value="View Account">
    </form>
    <%
    }
    if (customer != null) { 
    %>
    <table>
        <tr>
            <th>Account No.</th>
            <td><%= customer.getAccNo() %></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><%= customer.getAccName() %></td>
        </tr>
        <tr>
            <th>Mobile No.</th>
            <td><%= customer.getAccmob() %></td>
        </tr>
        <tr>
            <th>City</th>
            <td><%= customer.getAccCity() %></td>
        </tr>
        <tr>
            <th>Balance</th>
            <td><%= customer.getAccbal() %></td>
        </tr>
    </table>
    <%
    } else {
    	%><p>Account not found</p><% 
    } 
    %>
</body>
</html>
