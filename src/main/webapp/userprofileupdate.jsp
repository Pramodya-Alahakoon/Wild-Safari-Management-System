<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container01 {
            max-width: 400px;
            margin: 20px auto;
            padding: 35px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        h1 {
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"], input[type="password"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
 <meta charset="utf-8">
     
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-OSmPvj5/PDq7qR1G5p5Oy5F5QlR0E63fbbh7AIu7in5C5KtOZ9nvlC2xQfa3z9lP" crossorigin="anonymous">

   
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-OSmPvj5/PDq7qR1G5p5Oy5F5QlR0E63fbbh7AIu7in5C5KtOZ9nvlC2xQfa3z9lP" crossorigin="anonymous">

    <link rel="apple-touch-icon" href="images/apple-icon01.png">
    <link rel="shortcut icon" type="image/x-icon" href="images/apple-icon01.ico">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo.css">
    <link rel="stylesheet" href="css/custom.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Bootstrap CSS (if not already included) -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="css/fontawesome.min.css">
</head>
<body>
<div class="container-fluid">
   <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
						
						<i class="fas fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">wildsafari@company.com</a>
                    <i class="fas fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->



<nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="Home.jsp">
                Wild Safari
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contactus.jsp">Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="feedback.jsp">Feedback</a>
                        </li>
                        
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    
                    
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->


</div>
<div class="container01">
    <h1>Update Profile</h1>
    <% 
        // Retrieve details from URL parameters
        String iduser = request.getParameter("iduser");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String birthday = request.getParameter("birthday");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
    %>
    <form id="registration-form" action="Userupdateservlet" method="post"> <!-- Updated action to match servlet mapping -->
        <label for="iduser">User ID</label>
        <input type="text" id="iduser" name="iduser" value="<%= iduser %>" readonly>

        <label for="firstname">First Name</label>
        <input type="text" id="firstname" name="firstname" value="<%= firstname %>" required>

        <label for="lastname">Last Name</label>
        <input type="text" id="lastname" name="lastname" value="<%= lastname %>" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="<%= email %>" required>

        <label for="birthday">Birthday</label>
        <input type="text" id="birthday" name="birthday" value="<%= birthday %>" required>

        <label for="phone">Contact Number</label>
        <input type="tel" id="phone" name="phone" value="<%= phone %>" required pattern="[0-9]+" inputmode="numeric">

        <label for="username">Username</label>
        <input type="text" id="username" name="username" value="<%= username %>" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" value="<%= password %>" readonly>

        <button type="submit" name="submit" id="register-button">Update</button>
    </form>
</div>
<!-- Start Footer -->
<footer class="bg-dark" id="tempaltemo_footer">
    <div class="container">
        <div class="row">

            <div class="col-md-4 pt-2"> <!-- Reduced pt-3 to pt-2 -->
                <h3 class="h3 text-success border-bottom pb-2 border-light logo">Wild Safari</h3> <!-- Updated logo -->
                <ul class="list-unstyled text-light footer-link-list">
                    <li>
                        <i class="fas fa-map-marker-alt fa-fw"></i>
                        No.12 Wildlife Avenue, Safari Park, Natureland.
                    </li>
                    <li>
                        <i class="fa fa-phone fa-fw"></i>
                        <a class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                    </li>
                    <li>
                        <i class="fa fa-envelope fa-fw"></i>
                        <a class="text-decoration-none" href="mailto:info@wildsafari.com">info@wildsafari.com</a>
                    </li>
                </ul>
            </div>

            <div class="col-md-4 pt-2"> <!-- Reduced pt-3 to pt-2 -->
                <h3 class="h3 text-light border-bottom pb-2 border-light">Our Safaris</h3> <!-- Updated heading -->
                <ul class="list-unstyled text-light footer-link-list">
                    <li><a class="text-decoration-none" href="#">Wildlife Safari</a></li>
                    <li><a class="text-decoration-none" href="#">Night Safari</a></li>
                    <li><a class="text-decoration-none" href="#">Jungle Trekking</a></li>
                    <li><a class="text-decoration-none" href="#">Bird Watching Tours</a></li>
                    <li><a class="text-decoration-none" href="#">Adventure Safaris</a></li>
                    <li><a class="text-decoration-none" href="#">Family Safari Packages</a></li>
                    <li><a class="text-decoration-none" href="#">Photography Safaris</a></li>
                </ul>
            </div>

            <div class="col-md-4 pt-2"> <!-- Reduced pt-3 to pt-2 -->
                <h3 class="h3 text-light border-bottom pb-2 border-light">Further Info</h3> <!-- Updated heading -->
                <ul class="list-unstyled text-light footer-link-list">
                    <li><a class="text-decoration-none" href="home.jsp">Home</a></li>
                    <li><a class="text-decoration-none" href="aboutus.jsp">About Us</a></li>
                    <li><a class="text-decoration-none" href="feedback.jsp">Feedback</a></li>
                    <li><a class="text-decoration-none" href="Booking.jsp">Booking</a></li>
                </ul>
            </div>

        </div>

        <div class="row text-light mb-1"> <!-- Reduced mb-2 to mb-1 -->
            <div class="col-12 mb-2">
                <div class="w-100 my-2 border-top border-light"></div>
            </div>
            <div class="col-auto me-auto">
                <ul class="list-inline text-left footer-icons">
                    <li class="list-inline-item border border-light rounded-circle text-center">
                        <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                    </li>
                    <li class="list-inline-item border border-light rounded-circle text-center">
                        <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                    </li>
                    <li class="list-inline-item border border-light rounded-circle text-center">
                        <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                    </li>
                    <li class="list-inline-item border border-light rounded-circle text-center">
                        <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                    </li>
                </ul>
            </div>
            <div class="col-auto">
                <label class="sr-only" for="subscribeEmail">Email address</label>
                <div class="input-group mb-1"> <!-- Reduced mb-2 to mb-1 -->
                    <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                    <div class="input-group-text btn-success text-light">Subscribe</div>
                </div>
            </div>
        </div>
    </div>

    <div class="w-100 bg-black py-1"> <!-- Reduced py-2 to py-1 -->
        <div class="container">
            <div class="row pt-1"> <!-- Reduced pt-2 to pt-1 -->
                <div class="col-12">
                    <p class="text-left text-light">
                        Copyright &copy; 2024 
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>



<!-- Start Script -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/templatemo.js"></script>
    <script src="js/custom.js"></script>
    <!-- End Script -->

</body>
</html>
