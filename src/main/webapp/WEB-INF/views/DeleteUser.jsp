<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kapil.customer.Customer"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete Account</title>
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
    form {
        margin-bottom: 20px;
    }
    input[type="text"], input[type="submit"] {
        padding: 10px;
        margin: 5px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    input[type="submit"] {
        background-color: #007BFF;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    p {
        color: red;
    }
</style>
</head>
<body>
    <h1>Delete Account</h1>
    <form action="deleteAccount" method="post">
        <input type="text" name="accNo" placeholder="Enter Account Number" required>
        <input type="submit" value="Delete Account">
    </form>
    <% if (request.getAttribute("message") != null) { %>
        <p><%= request.getAttribute("message") %></p>
    <% } %>
</body>
</html>
