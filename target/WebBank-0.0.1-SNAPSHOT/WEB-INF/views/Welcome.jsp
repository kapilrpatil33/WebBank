<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Banking Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light blue background for the entire page */
            margin: 0;
        }
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: -250px; /* Initially hidden off-screen */
            background-color: #008080; /* Teal background for the sidebar */
            overflow-x: hidden;
            transition: 0.3s; /* Smooth transition when sidebar slides in/out */
            padding-top: 60px; /* Top padding to account for top bar */
            color: white; /* Text color for links */
        }
        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
            transition: 0.3s; /* Smooth transition on hover */
        }
        .sidebar a:hover {
            background-color: #006666; /* Darker background on hover */
        }
        .sidebar .close-btn {
            position: absolute;
            top: 20px;
            right: 10px;
            cursor: pointer;
            font-size: 30px;
            z-index: 2;
        }
        .open-btn {
            position: fixed;
            left: 10px;
            top: 20px;
            cursor: pointer;
            font-size: 30px;
            z-index: 2;
            color: #fff; /* White color for hamburger menu icon */
        }
        .open-btn::before,
        .open-btn::after {
            content: "";
            display: block;
            position: absolute;
            background-color: #fff;
            height: 3px;
            width: 25px;
            transition: 0.3s;
        }
        .open-btn::before {
            top: 0;
        }
        .open-btn::after {
            bottom: 0;
        }
        .open-btn:hover::before,
        .open-btn:hover::after {
            width: 30px; /* Increase width on hover for visual effect */
        }
        .container {
            margin-left: 250px; /* Adjust content area to accommodate sidebar */
            padding: 20px;
        }
        h1 {
            color: #007BFF;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div class="close-btn" onclick="closeNav()">&times;</div>
        <a href="AddUser">Add User</a>
        <a href="ViewAllUsers">View all users</a>
        <a href="ViewUser">View all users</a>
        <a href="DeleteUser">View all users</a>
        <a href="Deposit">Deposit</a>
        <a href="Withdraw">Withdraw</a>
    </div>

    <!-- Hamburger Menu Icon -->
    <div class="open-btn" onclick="openNav()"></div>

    <!-- Page Content -->
    <div class="container">
        <h1>Banking Application Management</
 <!-- Content for the admin panel goes here -->
    </div>

    <!-- JavaScript to toggle sidebar -->
    <script>
        function openNav() {
            document.getElementById("sidebar").style.left = "0";
        }

        function closeNav() {
            document.getElementById("sidebar").style.left = "-250px";
        }
    </script>
</body>
</html>