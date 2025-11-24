<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    // Retrieve user ID from session
    Integer userID = (Integer) session.getAttribute("userID");

    if (userID == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/admindashboard.css">
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
    
    </style>
</head>
<body>
    <div class="container">
        <!-- Sidebar -->
        <nav class="sidebar">
            <ul>
                <li><a href="admindashboard.jsp">Dashboard</a></li>
                <li><a href="addguide.jsp">Add Guide</a></li>
                <li><a href="adminprofileservlet?userID=<%= userID %>" class="button">View Profile</a></li>
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
		<div class="main-content">
            <header>
                <h1>All Booking</h1>
                <p>Welcome, User ID: <%= userID %></p>
            </header>
        	
                <!-- Feedback Details Table -->
               
                   <table class="table table-bordered table-striped text-center">
				<tr>
					<th colspan="9">All Booking Details</th>
				</tr>
			                <tr>
			                    <th>ID</th>
			                    <th>Package Type</th>
			                    <th>Package Details</th>
			                    <th>Venue</th>
			                    <th>Date</th>
			                    <th>Name</th>
			                    <th>Email</th>
			                    <th>Contact</th>
			                    <th>Price</th>
			                </tr>
			
			                <!-- Loop through booking list and display in table -->
			                <c:forEach var="cus" items="${bookingdetail}">
			                    <tr>
			                        <td>${cus.id}</td>
			                        <td>${cus.safaripackage}</td>
			                        <td>${cus.packageDetails}</td>
			                        <td>${cus.venue}</td>
			                        <td>${cus.date}</td>
			                        <td>${cus.name}</td>
			                        <td>${cus.email}</td>
			                        <td>${cus.contact}</td>
			                        <td>${cus.price}</td>
			                    </tr>
			                </c:forEach>
			            </table>
        		
    		
    	</div>
    </div>
</body>
</html>
