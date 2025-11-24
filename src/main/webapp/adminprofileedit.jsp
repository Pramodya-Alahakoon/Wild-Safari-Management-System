<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="model.userDBUtil" %>
<%@ page import="login.login" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    // Get userID from the request or session
    Integer userID = (Integer) session.getAttribute("userID");
    
    if (userID == null) {
        // Redirect to login page if user is not logged in
        response.sendRedirect("login.jsp");
        return;
    }

    // Fetch user details from the database using UserDBUtil
    List<login> userDetails = userDBUtil.getLoginDetailsById(userID);
    login admin = null;

    if (userDetails != null && !userDetails.isEmpty()) {
        admin = userDetails.get(0); // Assuming only one result since userID is unique
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Admin Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        .form-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Update Admin Profile</h2>
        
        <form action="adminupdate" method="post" style="
    margin-right: 20px;
">
            <input type="hidden" name="userID" value="<%= userID %>">

            <div class="form-group">
                <label for="firstname">First Name:</label>
                <input type="text" id="firstname" name="firstname" value="<%= admin != null ? admin.getFirstname() : "" %>" required>
            </div>

            <div class="form-group">
                <label for="lastname">Last Name:</label>
                <input type="text" id="lastname" name="lastname" value="<%= admin != null ? admin.getLastname() : "" %>" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%= admin != null ? admin.getEmail() : "" %>" required>
            </div>
			<div class="form-group">
                <label for="birthday">Birthday:</label>
                <input type="text" id="birthday" name="birthday" value="<%= admin != null ? admin.getBirthday() : "" %>" required>
            </div>

            <div class="form-group">
                <label for="phone">Contact Number:</label>
                <input type="text" id="phone" name="phone" value="<%= admin != null ? admin.getPhone() : "" %>" required>
            </div>

            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="<%= admin != null ? admin.getUsername() : "" %>" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" value="<%= admin != null ? admin.getPassword() : "" %>" required>
            </div>

            <div class="form-group">
                <button type="submit">Update Profile</button>
            </div>
        </form>
    </div>
</body>
</html>
