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
     body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
        }

       

        /* Main content */
        .main-content {
            flex: 1;
            padding: 20px;
        }

        .dashboard-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        .dashboard-header h1 {
            font-size: 28px;
            font-weight: 700;
            color: #333;
        }

        .dashboard-header img {
            max-width: 50px;
            border-radius: 50%;
        }

        /* Cards */
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
        }

        .card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        .card img {
            max-width: 100px;
            margin-bottom: 20px;
        }

        .card h3 {
            font-size: 18px;
            color: #333;
        }

        .card p {
            font-size: 14px;
            color: #666;
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

        <!-- Main Content -->
        <div class="main-content">
            <div class="dashboard-header">
                <h1>Welcome to the Admin Dashboard</h1>
                <img src="images/download.png" alt="Admin Profile">
            </div>

            <c:if test="${not empty successMessage}">
                <div class="message success-message">
                    ${successMessage}
                </div>
            </c:if>

            <c:if test="${not empty errorMessage}">
                <div class="message error-message">
                    ${errorMessage}
                </div>
            </c:if>

            <!-- Dashboard Cards -->
            <div class="card-container">
                <div class="card">
                    <img src="images/download.png" alt="User Icon">
                    <h3>Manage Users</h3>
                    <p>View and manage all users in the system.</p>
                </div>
                <div class="card">
                    <img src="images/8508098_3947116.jpg" alt="Booking Icon">
                    <h3>All Bookings</h3>
                    <p>Check and manage all bookings.</p>
                </div>
                <div class="card">
                    <img src="images/male_and_female_review_messages.jpg" alt="Feedback Icon">
                    <h3>User Feedback</h3>
                    <p>Review all user feedback and comments.</p>
                </div>
                <div class="card">
                    <img src="images/20770136_Sandy_Bus-39_Single-09.jpg" alt="Guide Icon">
                    <h3>Add Guide</h3>
                    <p>Register new guides for the system.</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
