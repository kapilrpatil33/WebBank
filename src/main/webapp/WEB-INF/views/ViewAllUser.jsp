<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
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
    <h1>All Accounts</h1>
    <table>
        <tr>
            <th>Account No.</th>
            <th>Name</th>
            <th>Mobile No.</th>
            <th>City</th>
            <th>Balance</th>
        </tr>
        <%
            List<Customer> customers = (List<Customer>) request.getAttribute("customerlist");
            for (Customer c : customers) {
        %>
        <tr>
            <td><%= c.getAccNo() %></td>
            <td><%= c.getAccName() %></td>
            <td><%= c.getAccmob() %></td>
            <td><%= c.getAccCity() %></td>
            <td><%= c.getAccbal() %></td>
        </tr>
        <%
            }
        %> 
    </table>
   
</body>
</html>
