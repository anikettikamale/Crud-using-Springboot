<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aniket Website</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	<style>
	
    body {
        background-color:  lightgreen;
        padding: 10px;
    }
    h2 {
        color: #007bff;
         font-style: italic;
    }
   form {
        border: 2px solid black;
        padding: 10px;
        border-radius: 15px;
        background-color: pink;
        width: 800px;
        max-width: 450px;
        font-style: italic;
        margin:auto;
    
    }
    input[type="text"] {
        margin-bottom: 10px;
        padding: 10px;
        border-radius: 8px;
        border: 2px solid black;
        background-color: lightcyan;
        width: 100%;
        max-width: 400px;
    }
    input[type="submit"] {
        padding: 10px 20px;
        border-radius: 8px;
        background-color: #007bff;
        color: white;
        border: 2px solid black;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: red;
    }
    table {
        margin-top: 20px;
    }
    h1{
     color: white  ;
        font-style: Fantasy; }
</style>
</head>
<body>
   <h2 class="text-center">ADD STUDENT</h2>
    <!-- Add Student Form -->
    <form action="/xyz" method="post" class="text-center">
        <input type="text" name="studentName" placeholder="Enter name" required>
        <input type="text" name="studentEmail" placeholder="Enter email" required>
        <input type="text" name="studentAge" placeholder="Enter age" required>
        <input type="text" name="studentAddress" placeholder="Enter address" required>
        <input type="submit" value="Register">
    </form>
<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Student Name</th>
				<th scope="col">Student Email</th>
				<th scope="col">Student Age</th>
				<th scope="col">Student Address</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="e" items="${data}">
				<tr>
					<th scope="row">${e.studentId}</th>
					<td>${e.studentName}</td>
					<td>${e.studentEmail}</td>
					<td>${e.studentAge}</td>
					<td>${e.studentAddress}</td>
						<td><a class="btn btn-warning" href="editdata?id=${e.studentId}">Edit</a>
					<a class="btn btn-danger" href="deletedata?id=${e.studentId}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>