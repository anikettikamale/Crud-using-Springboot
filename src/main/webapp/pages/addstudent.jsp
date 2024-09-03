<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
    <title>Add Student</title>
    <style>
        body {
            background-color: violet;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: green;
            padding: 20px;
            border-radius: 15px;
            border: 4px solid black;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        input {
            margin-bottom: 15px;
            padding: 10px;
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
            margin-top: 10px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        a {
            margin-top: 20px;
            display: inline-block;
            color: white;
            text-decoration: none;
            background-color: black;
            padding: 10px 20px;
            border-radius: 5px;
        }
        a:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
 <h1>Add Student</h1>
    <form action="/xyz" method="post">
        <input type="text" name="studentName" placeholder="Enter name" required><br>
    <input type="text" name="studentEmail" placeholder="Enter email" required><br>
    <input type="text" name="studentAge" placeholder="Enter age" required><br>
    <input type="text" name="studentAddress" placeholder="Enter address" required><br>
    <input type="submit" value="Register">
    </form>
    <a href="/display">Back to Student List</a>
</body>
</html>