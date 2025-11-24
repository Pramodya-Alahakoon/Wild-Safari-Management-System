<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    // Retrieve userID from the session
    Integer userID = (Integer) session.getAttribute("userID");

    // Check if userID is null
      if (userID == null) {
        // If userID is null, redirect to the login page
        response.sendRedirect("login.jsp"); // Redirect to login page
    } else {
        // If userID is not null, proceed with your logic
        request.setAttribute("message", "Welcome back, user " + userID + "!");
    }
%>
<!DOCTYPE html>
<html>
<head>
<title>Wild Safari</title>
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
    <style>
    /* General Styles */
.package-card {
    position: relative;
    border: 1px solid #ddd;
    padding: 15px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.package-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.package-card img {
    border-radius: 10px;
    width: 100%;
    height: auto;
}

/* Badge Styles */
.badge {
    position: absolute;
    top: 15px;
    left: 15px;
    padding: 10px 15px;
    background-color: #4CAF50;
    color: white;
    font-size: 14px;
    font-weight: bold;
    border-radius: 5px;
}

.badge-new {
    background-color: #FFC107;
}

.badge-days {
    background-color: #28A745;
}

/* Text Alignment */
h5, p {
    color: #333;
    font-weight: bold;
}

p {
    font-size: 14px;
    margin-top: 5px;
}

.text-center a {
    margin-top: 10px;
    font-size: 16px;
}

/* Responsiveness */
@media (max-width: 768px) {
    .package-card {
        margin-bottom: 20px;
    }
}
 /* Background Image for the Packages Section */
section.container.py-5 {
    background-image: url('images/yala-rekawa-mirissa-op-5.jpg') !important; /* Make sure the path is correct */
    background-size: cover;
    background-position: center;
    padding: 50px 0;
    color: white;
}

/* Add some opacity to package cards to make text more readable */
.package-card {
    background-color: rgba(0, 0, 0, 0.5); /* Adjusted opacity for better visibility */
    border-radius: 10px;
    padding: 15px;
    color: white;
    transition: all 0.3s ease-in-out;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Adds slight shadow for card elevation */
    min-height: 400px; /* Set a min-height for card */
}

/* Text Styling for better visibility */
.package-card h5 {
    color: #fff;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Add text shadow for readability */
}

.package-card p {
    color: rgba(255, 255, 255, 0.9); /* Slight opacity on text */
}

/* Adjust badge styles */
.badge {
    font-size: 1rem;
    background-color: #28a745; /* Customize as needed */
    color: white;
    padding: 5px 10px;
    border-radius: 5px;
    position: absolute;
    top: 10px;
    left: 10px;
}

.badge-days {
    background-color: #0062cc; /* Customize as needed */
}

.badge-new {
    background-color: #ff5722; /* Customize as needed */
}

/* Card hover effect */
.package-card:hover {
    transform: scale(1.05);
}

/* Button styling */
.btn-success {
    background-color: #28a745;
    border-color: #28a745;
    color: white;
    padding: 10px 20px;
}

.btn-success:hover {
    background-color: #218838;
    border-color: #1e7e34;
}

/* Extra styling for better layout */
.row .col-md-4 {
    margin-bottom: 30px; /* Add space between rows */
}

    </style>
</head>
<body>
<div class="container-fluid">
   <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
						<h1><%= request.getAttribute("message") %></h1>
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
                    
                    <a class="nav-icon position-relative text-decoration-none" href="Userprofileservlet?userID=<%= userID %>">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        
                    </a>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->


</div>
  
    
    
    
    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="images/1side.jpg" alt="" style="width: 300px; height: 350px;">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-warning"><b>Wild Safari</b> Adventures</h1>
								<h3 class="h2">Explore the Wild with Us</h3>
								<p>
								    Welcome to our safari adventure platform. 
								    From thrilling wildlife safaris to serene nature treks, we specialize in creating unforgettable journeys into the heart of the wilderness. 
								    Our expert guides ensure a seamless and exciting experience, making your adventure extraordinary and stress-free.
								</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                           <img class="img-fluid" src="images/2side.jpg" alt="" style="width: 300px; height: 350px;">

                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">Discover Natures Wonders</h1>

								<p>Immerse yourself in the beauty of the great outdoors with
									our Wild Safari experiences. Explore diverse ecosystems and
									observe wildlife in their natural habitat. Whether it's
									spotting rare species or enjoying panoramic views of stunning
									landscapes, our safaris offer an authentic connection to
									nature. Perfect for families, couples, or solo travelers, each
									adventure is designed to create lasting memories and foster a
									deep appreciation for the environment.</p>
							</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="images/3side.jpg" alt="" style="width: 300px; height: 350px;">
                        </div> 
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">Explore the Wild</h1>

								<p>Step into a world of adventure with our premier safari
									experiences. Whether you seek the thrill of spotting majestic
									wildlife on a game drive or the tranquility of a guided nature
									walk, we have something for every adventurer. Our knowledgeable
									guides share their expertise, revealing the secrets of the
									ecosystem and the fascinating behaviors of the animals you
									encounter. Join us for a journey that not only showcases the
									beauty of the wild but also fosters a deeper appreciation for
									our planet's rich biodiversity.</p>
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->
    
    
    

<!-- Start Packages Section -->
<section class="container py-5">
    <div class="row text-center pt-3">
        <div class="col-lg-6 m-auto">
            <h1 class="h1">Packages</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-md-4 p-5 mt-3">
            <div class="package-card">
                <span class="badge badge-new">New</span>
                <a href="events.jsp"><img src="images/package2.jpg" class="img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">Basic Safari Package</h5>
                <p class="text-center">Starting From LKR.50000</p>
               <p class="text-center">
				    <a href="Booking.jsp?package=Basic Safari Package&price=50000" class="btn btn-success">Booking</a>
				</p>
            </div>
        </div>
        <div class="col-12 col-md-4 p-5 mt-3">
            <div class="package-card">
                <span class="badge badge-days">01 Night</span>
                <a href="events.jsp"><img src="images/910_340_Somawathiya_480_380.jpg" class="img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">Explorer Safari Package</h5>
                <p class="text-center">Starting From LKR.100000</p>
                <p class="text-center">
				    <a href="Booking.jsp?package=Explorer Safari Package&price=100000" class="btn btn-success">Booking</a>
				</p>
            </div>
        </div>
        <div class="col-12 col-md-4 p-5 mt-3">
            <div class="package-card">
                <span class="badge badge-days">02 Nights</span>
                <a href="events.jsp"><img src="images/910_114_yalaNP_480_380.jpg" class="img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">Adventure Safari Package</h5>
                <p class="text-center">Starting From LKR.150000</p>
                <p class="text-center">
				    <a href="Booking.jsp?package=Adventure Safari Package&price=150000" class="btn btn-success">Booking</a>
				</p>
            </div>
        </div>
        <div class="col-12 col-md-4 p-5 mt-3">
            <div class="package-card">
                <span class="badge badge-days">03 Days</span>
                <a href="events.jsp"><img src="images/package1.jpg" class="img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">Luxury Safari Package</h5>
                <p class="text-center">Starting From LKR.200000</p>
               <p class="text-center">
				   <a href="Booking.jsp?package=Luxury Safari Package&price=200000" class="btn btn-success">Booking</a>
			   </p>
            </div>
        </div>
    </div>
</section>
<!-- End Packages Section -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Concluded Safaris</h1>
                    <p>
                          Our past safari events have left behind a trail of unforgettable memories. 
    From thrilling wildlife encounters to serene nature walks, these moments were filled with adventure, joy, and a deep connection to nature that continues to resonate.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="images/savannah.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Savannah Safari</a>
                            <p class="card-text">
                                A thrilling adventure across the savannah, where majestic wildlife roams free in their natural habitat.
                            </p>
                            <p class="text-muted">Reviews (24)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="images/Jungletrek.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                               
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Jungle Trek</a>
                            <p class="card-text">
                               Experience the thrill of a guided trek through the jungle, discovering diverse flora and fauna along the way.
                            </p>
                            <p class="text-muted">Reviews (48)</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="images/nightsafari.jpg" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                               
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">Night Safari</a>
                            <p class="card-text">
                               A unique experience under the stars, where you can witness nocturnal wildlife in their natural habitat.
                            </p>
                            <p class="text-muted">Reviews (74)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Featured Product -->


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
    <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
    <!-- End Script -->

</body>
</html>