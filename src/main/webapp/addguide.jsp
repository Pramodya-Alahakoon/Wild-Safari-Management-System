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
    <title>Add Guide</title>
    <link rel="stylesheet" href="css/admindashboard.css">
    <style>
    /* Container for the form */
.form-container {
    width: 600px;
    margin: 50px auto;
    margin-bottom:20px;
    padding: 30px;
    background-color: #f9f9f9;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    font-family: 'Arial', sans-serif;
}

/* Form heading */
.form-container h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

/* Form group styling */
.form-group {
    margin-bottom: 15px;
}

/* Labels */
.form-group label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
    color: #333;
}

/* Input fields */
.form-group input[type="text"],
.form-group input[type="email"],
.form-group input[type="number"],
.form-group textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

/* Textarea for bio */
.form-group textarea {
    resize: vertical;
}

/* Submit button */
.form-group input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
}

/* Hover effect for submit button */
.form-group input[type="submit"]:hover {
    background-color: #218838;
}

/* Responsive design for smaller screens */
@media (max-width: 500px) {
    .form-container {
        width: 90%;
        padding: 20px;
    }
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
	
       <div class="form-container">
        <h2>Create Tour Guide Account</h2>
        <form action="guideinsert" method="post">
            <div class="form-group">
                <label for="firstname">First Name</label>
                <input type="text" id="firstname" name="firstname" required>
            </div>

            <div class="form-group">
                <label for="lastname">Last Name</label>
                <input type="text" id="lastname" name="lastname" required>
            </div>

            <div class="form-group">
    <label for="email">Email</label>
    <input type="email" id="email" name="email" required 
           pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" 
           title="Please enter a valid email address">
</div>

<div class="form-group">
    <label for="phone">Phone Number</label>
    <input type="text" id="phone" name="phone" required 
           pattern="\d{10}" 
           title="Please enter a valid 10-digit phone number">
</div>

            <div class="form-group">
                <label for="experience">Experience (in years)</label>
                <input type="number" id="experience" name="experience" min="0" required>
            </div>

            <div class="form-group">
                <label for="languages">Languages Spoken</label>
                <input type="text" id="languages" name="languages" required placeholder="E.g. English, Spanish, French">
            </div>

            <div class="form-group">
                <label for="bio">Short Bio</label>
                <textarea id="bio" name="bio" rows="4" required></textarea>
            </div>

            <div class="form-group">
                <input type="submit" value="Create Account">
            </div>
        </form>
    </div>
    </div>
</body>
</html>
