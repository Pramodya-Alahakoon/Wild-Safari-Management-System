<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    // Retrieve userID from the session
    Integer userID = (Integer) session.getAttribute("userID");

    // Check if userID is null
    if (userID == null) {
        // If userID is null, continue loading the home page
        // Optionally, set a default message for anonymous users
        request.setAttribute("message", "Welcome, guest!");
    } else {
        // If userID is not null, proceed with your logic
        request.setAttribute("message", "Welcome back, user " + userID + "!");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Safari</title>
<style>
.container03 {
  display: grid;
  grid-template-columns: 1fr 1fr; /* Two equal columns */
  gap: 20px; /* Space between the columns */
  
}

.item {
 
  padding: 20px;
  
 
}

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
         .container01 {
    max-width: 800px;
    margin: 20px auto; /* Added 20px top and bottom margin */
    padding: 35px 45px 35px 35px;
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
    font-size: 16px; /* Added font size for labels */
}

input[type="text"],
input[type="date"],
input[type="password"],
input[type="email"],
input[type="tel"],
textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px; /* Added font size for input fields */
}
select#safaripackage {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px; /* Added font size for select */
}
select#venue {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px; /* Added font size for select */
}
button {
    width: 100%;
    padding: 10px;
    background-color: green;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px; /* Added font size for the button */
}

button:hover {
    background-color: #0056b3;
}

.custom-checkbox,
.custom-radio {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
    font-size: 16px; /* Added font size for checkboxes and radio buttons */
}

.custom-checkbox input[type="checkbox"],
.custom-radio input[type="radio"] {
    margin-right: 5px;
}

.custom-checkbox label,
.custom-radio label {
    font-size: 16px; /* Added font size for checkbox and radio button labels */
}

        
 /* Image Gallery Container */
.image-gallery {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 100px;
}

/* Main Image Styling */
.main-image {
    position: relative;
    width: 600px; /* Adjust as needed */
    height: 500px; /* Adjust as needed */
    margin-bottom: 20px;
}
.main-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 10px;
}

/* Sale Tag */
.sale-tag {
    position: absolute;
    top: 10px;
    left: 10px;
    background-color: #007bff;
    color: white;
    padding: 5px 10px;
    border-radius: 5px;
    font-size: 14px;
    font-weight: bold;
}

/* Zoom Icon */
.zoom-icon {
    position: absolute;
    top: 10px;
    right: 10px;
    background-color: rgba(255, 255, 255, 0.8);
    padding: 5px;
    border-radius: 50%;
    font-size: 18px;
    cursor: pointer;
}

/* Thumbnail Image Styling */
.thumbnails {
    display: flex;
    justify-content: center;
    gap: 10px;
}
.thumbnails img {
    width: 80px;
    height: 80px;
    object-fit: cover;
    border-radius: 5px;
    cursor: pointer;
    opacity: 0.8;
    transition: opacity 0.3s ease;
}
.thumbnails img:hover {
    opacity: 1;
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
<div class="container03">
  <div class="item">
  
		<div class="image-gallery">
		    <!-- Main Image -->
		    <div class="main-image">
		        <img src="images/wild-world-of-sri-lanka-1.jpg" alt="Main Safari Image">
		       
		    </div>
		
		    <!-- Thumbnails -->
		    <div class="thumbnails">
		        <img src="images/anawilundawa-wilpattu-minneriya-op-6.jpg" alt="Thumbnail 1">
		        <img src="images/yala-rekawa-mirissa-op-3.jpg" alt="Thumbnail 2">
		        <img src="images/yala-rekawa-mirissa-op-1.jpg" alt="Thumbnail 3">
		        <img src="images/yala-rekawa-mirissa-op-14.jpg" alt="Thumbnail 4">
		        <img src="images/yala-rekawa-mirissa-op-9.jpg" alt="Thumbnail 5">
		        <img src="images/wild-world-of-sri-lanka-1.jpg" alt="Thumbnail 6">
		        
		    </div>
		</div>
  </div>
  <div class="item">
  
<div class="container01">


    <h1>Booking Safari</h1>
    <form id="registration-form" action="insertbooking" method="post">
        <label for="safari">Safari package:</label>
        <select id="safaripackage" name="safaripackage" required onchange="updatePackageDetails()">
            <option disabled selected>Select safari package</option>
            <option value="Basic Safari Package" data-price="50000" data-details="Duration: Half-day (4 hours)\nInclusions:\n- Guided safari tour\n- Wildlife viewing\n- Light refreshments (snacks and drinks)\nPrice: LKR.50000">Basic Safari Package</option>
            <option value="Explorer Safari Package" data-price="100000" data-details="Duration: Full day (8 hours)\nInclusions:\n- Guided safari tour\n- Wildlife viewing with expert commentary\n- Packed lunch\n- Photography stops\n- Free binoculars rental\nPrice: LKR.100000">Explorer Safari Package</option>
            <option value="Adventure Safari Package" data-price="150000" data-details="Duration: 2 days, 1 night\nInclusions:\n- All-day safari tours\n- Night safari for nocturnal animal viewing\n- Camping experience with meals\n- Guided nature walks\n- Wildlife photography sessions with expert guidance\nPrice: LKR.150000">Adventure Safari Package</option>
            <option value="Luxury Safari Package" data-price="200000" data-details="Duration: 3 days, 2 nights\nInclusions:\n- Luxury accommodations (lodges)\n- Private safari tours with a personal guide\n- All meals included (gourmet dining)\n- VIP wildlife photography sessions\n- Spa treatment at the lodge\n- Evening campfire experience with storytelling\nPrice: LKR.200000">Luxury Safari Package</option>
        </select>

        <label for="packageDetails">Safari Package Details:</label>
        <textarea id="packageDetails" name="packageDetails" readonly rows="6" cols="50"></textarea>

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>

        <label for="venue">Venue:</label>
        <select id="venue" name="venue" required>
            <option disabled selected>Select Venue</option>
            <option value="Hanthana">Hanthana</option>
            <option value="Idalgasinna">Idalgasinna</option>
            <option value="Sinharaja">Sinharaja</option>
            <option value="Sigiriya">Sigiriya</option>
        </select>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required placeholder="Full Name">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" placeholder="email@gmail.com">

        <label for="contact">Contact Number:</label>
        <input 
    type="tel" 
    id="contact" 
    name="contact" 
    required 
    pattern="^[0-9]+$" 
    inputmode="numeric" 
    title="Please enter numbers only."
>

        <label for="price">Price:</label>
        <input type="text" id="totalPrice" name="price" value="LKR" readonly>
        
       <h4>Payment Details</h4> <br>
	<label for="cardNumber">Card Number:</label>
    <input type="text" id="cardNumber" placeholder="Enter 16-digit card number" maxlength="16" required pattern="\d{16}" title="Card number must be exactly 16 digits">

    <!-- Expiration Date -->
    <label for="expDate">Expiration Date (MM/YY):</label>
    <input type="text" id="expDate" placeholder="MM/YY" required pattern="(0[1-9]|1[0-2])\/?([0-9]{2})" title="Enter expiration date in MM/YY format">

    <!-- CVC Code -->
    <label for="cvc">CVC Code:</label>
    <input type="text" id="cvc" placeholder="Enter 3-digit CVC" maxlength="3" required pattern="\d{3}" title="CVC must be 3 digits">

        <button type="submit" name="submit" id="register-button">Booking</button>
    </form>
</div>
  </div>
 
</div>

    <script>
        // Function to update the package details based on selection
        
            
        function updatePackageDetails() {
            var safariSelect = document.getElementById("safaripackage");
            var selectedOption = safariSelect.options[safariSelect.selectedIndex];
            var details = selectedOption.getAttribute("data-details");

            if (details) {
                // Replace \\n with actual new lines in textarea
                details = details.replace(/\\n/g, "\n");
                document.getElementById("packageDetails").value = details;

                // Update price based on the selected package
                var price = selectedOption.getAttribute("data-price");
                document.getElementById("totalPrice").value = `LKR ${price}`;
            } else {
                // Reset the package details and price if no package is selected
                document.getElementById("packageDetails").value = '';
                document.getElementById("totalPrice").value = 'LKR';
            }
        }

        // Function to get URL parameters
        function getURLParameter(name) {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(name);
        }

        // Populate form fields based on URL parameters
        function populateBookingForm() {
            const packageName = getURLParameter('package');
            const packagePrice = getURLParameter('price');

            if (packageName) {
                // Set the selected package in the dropdown
                document.getElementById('safaripackage').value = packageName;

                // Update the package details based on the selected package
                updatePackageDetails();
            }

            if (packagePrice) {
                // Set the total price value as LKR and keep it readonly
                document.getElementById('totalPrice').value = packagePrice ;
            }
        }

        // Call populateBookingForm when the page loads
        window.onload = populateBookingForm;
        
        
        const mainImage = document.querySelector('.main-image img');
        const thumbnails = document.querySelectorAll('.thumbnails img');
        let currentIndex = 0;
        let autoSlideInterval;

        // Function to change the main image
        function changeImage(index) {
          mainImage.src = thumbnails[index].src;
          currentIndex = index;
        }

        // Function for auto slide
        function startAutoSlide() {
          autoSlideInterval = setInterval(() => {
            currentIndex = (currentIndex + 1) % thumbnails.length;
            changeImage(currentIndex);
          }, 3000); // Change image every 3 seconds
        }

        // Manually change the main image by clicking on thumbnails
        thumbnails.forEach((thumbnail, index) => {
          thumbnail.addEventListener('click', () => {
            clearInterval(autoSlideInterval); // Stop auto slide on click
            changeImage(index);
            startAutoSlide(); // Restart auto slide after manual change
          });
        });

        // Start the auto slide when the page loads
        startAutoSlide();
        // Contact number validation (limit to 10 digits)
        const contactInput = document.getElementById('contact');

        contactInput.addEventListener('input', () => {
            const contactValue = contactInput.value;
            if (contactValue.length !== 10) {
                contactInput.setCustomValidity('Contact number must be exactly 10 digits');
            } else {
                contactInput.setCustomValidity('');
            }
        });
     // Get today's date in YYYY-MM-DD format
        const today = new Date().toISOString().split('T')[0];
        
        // Set the minimum date for the input field
        document.getElementById('date').min = today;
        
        const eventTypeSelect = document.getElementById('safaripackage');
        const checkboxes = document.querySelectorAll('input[type="checkbox"]');
        const totalPriceSpan = document.getElementById('totalPrice');

        // Add event listener to the event type select
        eventTypeSelect.addEventListener('change', calculateTotalPrice);
        
        // Add event listener to each checkbox
        checkboxes.forEach(checkbox => {
            checkbox.addEventListener('change', calculateTotalPrice);
        });

        function calculateTotalPrice() {
            let eventPrice = 0;

            // Get the selected event type price
            const selectedEvent = eventTypeSelect.value;
            const selectedEventOption = eventTypeSelect.options[eventTypeSelect.selectedIndex];
            eventPrice = parseFloat(selectedEventOption.getAttribute('data-price'));

            // Add the additional service prices
            checkboxes.forEach(checkbox => {
                if (checkbox.checked) {
                    eventPrice += parseFloat(checkbox.getAttribute('data-price'));
                }
            });

            // Update the hidden input field value
            document.getElementById('totalPrice').value = eventPrice.toFixed(2);
        }
    </script>




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

 


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/templatemo.js"></script>
    <script src="js/custom.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>