<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="login.login"%>
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
<title>User Profile</title>
<link rel="stylesheet" href="css/admindashboard.css">
<style>
.btn {
            background-color: #007bff; /* Blue background */
            color: white; /* White text */
            border: none; /* Remove default border */
            border-radius: 5px; /* Rounded corners */
            padding: 10px 15px; /* Padding for buttons */
            font-size: 16px; /* Font size */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s ease; /* Smooth transition for hover effect */
            display: inline-block; /* Display as inline block for spacing */
            text-align: center; /* Center text inside buttons */
            margin: 5px 0; /* Space between buttons */
        }
         .btn:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        /* Button Color Variants */
        .btn-success {
            background-color: #28a745; /* Green background */
        }

        .btn-success:hover {
            background-color: #218838; /* Darker green on hover */
        }

        .btn-danger {
            background-color: #dc3545; /* Red background */
        }

        .btn-danger:hover {
            background-color: #c82333; /* Darker red on hover */
        }
        /* Profile container styling */
.profile-details {
    background-color: #f9f9f9; /* Light background */
    padding: 20px;
    border-radius: 10px; /* Rounded corners */
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow for a card effect */
    width: 50%; /* Center profile container */
    margin: 20px auto;
    font-family: 'Arial', sans-serif; /* Clean font */
}

/* Profile headings */
.profile-details h3 {
    text-align: center;
    font-size: 24px;
    color: #333;
    margin-bottom: 20px;
    font-weight: bold;
}

/* Profile data styling */
.profile-details p {
    font-size: 18px;
    color: #555;
    margin: 10px 0;
}

/* Highlight the labels in profile */
.profile-details p strong {
    font-weight: bold;
    color: #333;
    width: 150px;
    display: inline-block; /* Makes labels align better */
}

/* Style for the no details found message */
.profile-details p a {
    color: #007bff;
    text-decoration: none;
}

.profile-details p a:hover {
    text-decoration: underline;
}

/* Styling the 'No details found' paragraph */
.profile-details p.no-details {
    color: #d9534f; /* Error-like color */
    font-weight: bold;
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
				<h1>Admin Dashboard</h1>
				<p>
					Welcome, User ID:
					<%=userID%></p>
				<!-- Display user ID -->
			</header>

			
					
					<div class="profile-details">
					<h3>Admin Profile</h3>
						<%
						List<login> loginDetails = (List<login>) request.getAttribute("loginDetails");
						if (loginDetails != null && !loginDetails.isEmpty()) {
							login admin = loginDetails.get(0); // Get the first user (assuming unique username)
						%>
						<p>
							<strong>First Name:</strong>
							<%=admin.getFirstname()%></p>
						<p>
							<strong>Last Name:</strong>
							<%=admin.getLastname()%></p>
						<p>
							<strong>Email:</strong>
							<%=admin.getEmail()%></p>
						<p>
							<strong>Birthday:</strong>
							<%=admin.getBirthday()%></p>
						<p>
							<strong>Contact No:</strong>
							<%=admin.getPhone()%></p>
						<p>
							<strong>Username:</strong>
							<%=admin.getUsername()%></p>
						<p>
							<strong>Password:</strong>
							<%=admin.getPassword()%></p>
						<%
						} else {
						%>
						<p>No details found. Please check your profile information.</p>
						<p>
							<a href="admindashboard.jsp">Go to Profile</a>
						</p>
						<%
						}
						%>
						<a href="adminprofileedit.jsp?id=<%=userID%>" class="btn btn-info">Edit Profile</a>
            			
            			
						
						
					</div>
					
				</div>


		
	</div>
	<script type="text/javascript">
    function confirmDelete() {
        return confirm('Are you sure you want to delete your account? This action cannot be undone.');
    }
</script>
</body>

</html>
