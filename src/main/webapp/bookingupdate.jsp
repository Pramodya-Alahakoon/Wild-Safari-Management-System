<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Update</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
         .container01 {
    max-width: 400px;
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


<% //catch the details come from url in useraccount page
		String id = request.getParameter("id");//id is the parameter name of CID in useraccount page inside url tag
		String safaripackage = request.getParameter("safaripackage");
		String venue = request.getParameter("venue");
		String date = request.getParameter("date");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String packageDetails = request.getParameter("packageDetails");
		String price = request.getParameter("price");
	%>


<div class="container01">
    <h1>Update Booking Safari</h1>
    <form id="registration-form" action="bookingupdate" method="post">

        <label for="id">ID</label>
        <input type="text" id="id" name="id" value="<%= id %>" readonly>

        <label for="safaripackage">Safari package:</label>
        <select id="safaripackage" name="safaripackage" required onchange="updatePackageDetails()">
            <option disabled selected>Select safari package</option>
            <option value="Basic Safari Package" data-price="50000" data-details="Duration: Half-day (4 hours)\nInclusions:\n- Guided safari tour\n- Wildlife viewing\n- Light refreshments (snacks and drinks)\nPrice: $50 per person" 
                <%= safaripackage != null && safaripackage.equals("Basic Safari Package") ? "selected" : "" %>>Basic Safari Package</option>
            <option value="Explorer Safari Package" data-price="100000" data-details="Duration: Full day (8 hours)\nInclusions:\n- Guided safari tour\n- Wildlife viewing with expert commentary\n- Packed lunch\n- Photography stops\n- Free binoculars rental\nPrice: $100 per person" 
                <%= safaripackage != null && safaripackage.equals("Explorer Safari Package") ? "selected" : "" %>>Explorer Safari Package</option>
            <option value="Adventure Safari Package" data-price="150000" data-details="Duration: 2 days, 1 night\nInclusions:\n- All-day safari tours\n- Night safari for nocturnal animal viewing\n- Camping experience with meals\n- Guided nature walks\n- Wildlife photography sessions with expert guidance\nPrice: $250 per person" 
                <%= safaripackage != null && safaripackage.equals("Adventure Safari Package") ? "selected" : "" %>>Adventure Safari Package</option>
            <option value="Luxury Safari Package" data-price="200000" data-details="Duration: 3 days, 2 nights\nInclusions:\n- Luxury accommodations (lodges)\n- Private safari tours with a personal guide\n- All meals included (gourmet dining)\n- VIP wildlife photography sessions\n- Spa treatment at the lodge\n- Evening campfire experience with storytelling\nPrice: $500 per person" 
                <%= safaripackage != null && safaripackage.equals("Luxury Safari Package") ? "selected" : "" %>>Luxury Safari Package</option>
        </select>

        <label for="packageDetails">Safari Package Details:</label>
        <textarea id="packageDetails" name="packageDetails" readonly rows="6" cols="50"><%= packageDetails %></textarea>

        <label for="date">Date:</label>
        <input type="text" id="date" name="date" value="<%= date %>" required>

        <label for="venue">Venue:</label>
        <select id="venue" name="venue" required>
            <option disabled selected>Select Venue</option>
            <option value="Hanthana" <%= venue != null && venue.equals("Hanthana") ? "selected" : "" %>>Hanthana</option>
            <option value="Idalgasinna" <%= venue != null && venue.equals("Idalgasinna") ? "selected" : "" %>>Idalgasinna</option>
            <option value="Sinharaja" <%= venue != null && venue.equals("Sinharaja") ? "selected" : "" %>>Sinharaja</option>
            <option value="Sigiriya" <%= venue != null && venue.equals("Sigiriya") ? "selected" : "" %>>Sigiriya</option>
        </select>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= name %>" required placeholder="Full Name">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<%= email %>" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" placeholder="email@gmail.com">

        <label for="contact">Contact Number:</label>
        <input type="tel" id="contact" name="contact" value="<%= contact %>" required pattern="[0-9]+" inputmode="numeric">

        <label for="totalPrice">Price:</label>
        <input type="text" id="totalPrice" name="price" value="<%= price %>" readonly>

        <button type="submit" name="submit" id="register-button">Update</button>
    </form>
</div>

<script>
    // Update safari package details on package change
    function updatePackageDetails() {
        var safariSelect = document.getElementById("safaripackage");
        var selectedOption = safariSelect.options[safariSelect.selectedIndex];
        var details = selectedOption.getAttribute("data-details");

        // Replace "\n" with actual new line for textarea
        details = details.replace(/\\n/g, "\n");

        // Set the textarea content with line breaks
        document.getElementById("packageDetails").value = details;

        // Update price based on the selected package
        var price = selectedOption.getAttribute("data-price");
        document.getElementById("totalPrice").value = (price / 100).toFixed(2); // Convert to dollar
    }

    // Auto-update the package details if there's an initial selection from the URL
    window.onload = function() {
        if (document.getElementById("safaripackage").value !== "Select safari package") {
            updatePackageDetails();
        }
    };
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

 

<!-- Include Bootstrap JS and jQuery -->
<script>
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