package booking;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.bookingDBUtil;


/**
 * Servlet implementation class Bookingdeleteservlet
 */
@WebServlet("/Bookingdeleteservlet")
public class Bookingdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String id = request.getParameter("id"); // Get the booking ID from the request
	        boolean isTrue;

	        // Call the database utility method to delete the booking
	        isTrue = bookingDBUtil.deletebooking(id);

	        if (isTrue) {
	            // Retrieve userID from the session
	            Integer userID = (Integer) request.getSession().getAttribute("userID");

	            // Redirect with success message while keeping the userID
	            response.setContentType("text/html");
	            PrintWriter out = response.getWriter();
	            out.println("<html><body>");
	            out.println("<script type='text/javascript'>");
	            out.println("alert('Your booking has been deleted. Please book a new safari.');");
	            out.println("window.location.href='Booking.jsp?userID=" + userID + "';"); // Redirect to Booking.jsp with userID parameter
	            out.println("</script>");
	            out.println("</body></html>");
	        } else {
	            // If deletion fails, show an error message
	            response.setContentType("text/html");
	            PrintWriter out = response.getWriter();
	            out.println("<html><body>");
	            out.println("<script type='text/javascript'>");
	            out.println("alert('Cannot delete Booking.');");
	            out.println("window.location.href='viewbookingdetails.jsp';"); // Redirect back to booking details
	            out.println("</script>");
	            out.println("</body></html>");
	        }
	    }
	}