<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e9ecef;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        h2 {
            color: #007BFF;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            text-align: left;
        }
        input[type="text"], input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            display: inline-block;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .login-link {
            display: block;
            margin-top: 20px;
            color: #007BFF;
            text-decoration: none;
        }
        .login-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Account</h2>
        <form action="addUser" method="post">
        
        	<label for="name">Account No:</label>
            <input type="text" id="name" placeholder="Enter your Account Number" name="name" required>
            
            <label for="name">Name:</label>
            <input type="text" id="name" placeholder="Enter your name" name="name" required>
            
            <label for="mobno">Phone No.:</label>
            <input type="text" id="mobno" placeholder="Enter phone number" name="mobno" required>
            
            <label for="mobno">City :</label>
            <input type="text" id="city" placeholder="Enter your city" name="city" required>
            
            <label for="email">User Email:</label>
            <input type="text" id="email" placeholder="Enter Email" name="email" required>
                        
            <label for="balance">Enter initial Balance :</label>
            <input type="text" id="balance" placeholder="Enter balance" name="balance" required>
                       
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
