<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<style>
    body {
        background-color: violet;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
        background-color: green;
        padding: 100px;
        border-radius: 15px;
        border:4px solid black
        
    }
    input {
        margin-bottom: 10px;
        padding: 20px;
        border: 3px solid red;
        border-radius: 15px;
        width: 100%;
        max-width: 300px;
    }
    input[type="submit"] {
        background-color: red;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<form action="xyz" method="post">
    <input type="text" name="studentName" placeholder="Enter name" required>
    <input type="text" name="studentEmail" placeholder="Enter email" required>
    <input type="text" name="studentAge" placeholder="Enter age" required>
    <input type="text" name="studentAddress" placeholder="Enter address" required>
    <input type="submit" value="Register">
</form>
</body>
</html>