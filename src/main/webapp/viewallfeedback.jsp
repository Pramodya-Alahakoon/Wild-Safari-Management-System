<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
// Retrieve user ID from session
Integer userID = (Integer) session.getAttribute("userID");

if (userID == null) {
	// Redirect to login page if userID is null
	response.sendRedirect("login.jsp");
	return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Feedback</title>
<link rel="stylesheet" href="css/admindashboard.css">
<!-- Bootstrap CSS (if not already included) -->
   <style>
   /* Base table styling */
.table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    font-size: 18px;
    text-align: left;
}

/* Border for table and cells */
.table-bordered th,
.table-bordered td {
    border: 1px solid #ddd;
    padding: 8px;
}

/* Table header styling */
.table-bordered th {
    padding-top: 12px;
    padding-bottom: 12px;
    background-color: #f2f2f2;
    color: #333;
    text-align: center; /* Centering header text */
}

/* Zebra striping for rows */
.table-striped tr:nth-child(even) {
    background-color: #f9f9f9; /* Light gray for even rows */
}

/* Center the content in table cells */
.text-center th,
.text-center td {
    text-align: center;
}
   .btn-info {
    background-color: #17a2b8;
    color: white;
    border: none;
    padding: 8px 16px;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
    margin-right: 5px;
    display: inline-block;
}

.btn-info:hover {
    background-color: #138496;
}

/* Styling for Delete button */
.btn-danger {
    background-color: #dc3545;
    color: white;
    border: none;
    padding: 8px 16px;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
    display: inline-block;
}

.btn-danger:hover {
    background-color: #c82333;
}
   </style>
</head>
<body>
	<div class="container	">
		<!-- Sidebar -->
		<nav class="sidebar">
			<ul>
				<li><a href="admindashboard.jsp">Dashboard</a></li>
				<li><a href="addguide.jsp">Add Guide</a></li>
				<li><a href="adminprofileservlet?userID=<%=userID%>"
					class="button">View Profile</a></li>
				<li>
					<form action="allfeedback" method="post">
						<input type="submit" name="submit" value="All Feedback">
					</form>
				</li>
				<li>
					<form action="bookingallservlet" method="post">
						<input type="submit" name="submit" value="All Booking">
					</form>
				</li>
				<li><a href="login.jsp">Logout</a></li>
			</ul>
		</nav>

		<!-- Main Content -->
		<div class="main-content">
			<header>
				<h1>All Feedback</h1>
				<p>
					Welcome, User ID:
					<%=userID%></p>
			</header>


			<!-- Feedback Details Table -->

			<h2></h2>
			<table class="table table-bordered table-striped text-center">
				<tr>
					<th colspan="7">All Feedback Details</th>
				</tr>
				<tr>
					<th>Feedback ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Message</th>
					<th>Rating</th>
					<th>Action</th>
				</tr>

				<!-- Loop through feedback list and display in table -->
				<c:forEach var="cus" items="${feedbackList}">
					<tr>
						<td>${cus.feedbackid}</td>
						<td>${cus.name}</td>
						<td>${cus.email}</td>
						<td>${cus.phone}</td>
						<td>${cus.message}</td>
						<td>${cus.rating}</td>
						<td><c:url value="Feedbackdeleteservlet" var="admindeletefeedback">
    			<c:param name="feedbackid" value="${cus.feedbackid}"/>
				</c:url>

				<form action="${admindeletefeedback}" method="post">
				    <input type="hidden" name="feedbackid" value="${cus.feedbackid}"> <!-- Use hidden input to store the ID -->
				    <br>
				    <button type="submit" class="btn btn-danger btn-block">Delete Feedback</button>
				</form></td>
						
					</tr>
				</c:forEach>
			</table>


		</div>
	</div>
</body>
</html>
