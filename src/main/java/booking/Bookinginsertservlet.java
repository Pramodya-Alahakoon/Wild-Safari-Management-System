package booking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bookingDBUtil;


/**
 * Servlet implementation class Bookinginsertservlet
 */
@WebServlet("/Bookinginsertservlet")
public class Bookinginsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		    
		String safaripackage = request.getParameter("safaripackage");
		String packageDetails = request.getParameter("packageDetails");
		String date = request.getParameter("date");
		String venue = request.getParameter("venue");
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		
		String price = request.getParameter("price");
		boolean isTrue;//catch the return value by the variable
		
		isTrue = bookingDBUtil.insertbooking( safaripackage,packageDetails, date, venue, name, email,contact,  price);
		
		if(isTrue == true) {//check the database connection success or not
			 out.println("<script type=\"text/javascript\">");
			    out.println("alert('Booking successfully!');");
			    out.println("window.location.href = 'Home.jsp';"); // Redirect to your registration page
			    out.println("</script>");
		} else {
		    // Replace the RequestDispatcher with a JavaScript alert
		   
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert('Booking unsuccessfully!');");
		    out.println("window.location.href = 'Home.jsp';"); // Redirect to your registration page
		    out.println("</script>");
		}
		
		
		
	}

}