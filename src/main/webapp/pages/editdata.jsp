<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Form</title>
<style>
    body {
        background-color:  yellow; 
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        font-family: Arial, sans-serif;
    }
    .container {
        text-align: center;
         font-style: italic;
    }
    h1 {
        color: #343a40; 
        margin-bottom: 20px;
    }
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
        background-color: green;
        padding: 70px;
        border-radius: 15px;
        border: 1px solid black; 
    }
    input {
        margin-bottom: 15px;
        padding: 12px;
        border: 1px solid #ced4da; 
        border-radius: 8px;
        width: 300px;

    }
    input[type="submit"] {
        background-color: #007bff; 
        color: white;
        border: none;
        cursor: pointer;
        padding: 12px;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3; 
    }
</style>
</head>
<body>
<div class="container">
    <h1>Update Form</h1>
    <form action="xyz" method="post">
        <input type="hidden" name="studentId" value="${data.studentId}"> 
        <input type="text" name="studentName" value="${data.studentName}" placeholder="Enter name" required><br>
        <input type="text" name="studentEmail" value="${data.studentEmail}" placeholder="Enter email" required><br>
        <input type="text" name="studentAge" value="${data.studentAge}" placeholder="Enter age" required><br>
    <input type="text" name="studentAddress" value="${data.studentAddress}" placeholder="Enter address" required>
        <input type="submit" value="Update"> 
    </form>
</div>
</body>
</html>