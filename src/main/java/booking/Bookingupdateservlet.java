package booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.bookingDBUtil;


/**
 * Servlet implementation class Bookingupdateservlet
 */
@WebServlet("/Bookingupdateservlet")
public class Bookingupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//save the details that entered by customer
		String id = request.getParameter("id");//cusid is the name of the input type of CID in updatecustomer.jsp
		String safaripackage = request.getParameter("safaripackage");
		String packageDetails = request.getParameter("packageDetails");
		String date = request.getParameter("date");
		String venue = request.getParameter("venue");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		
		String price = request.getParameter("price");
		
		
		boolean isTrue;
		
		isTrue = bookingDBUtil.updatebooking(id, safaripackage,packageDetails,date, venue,  name, email, contact,price);//parameters used in updatecustomer method in customerDBUtil class
		
		if(isTrue == true) {
	        List<booking> bookingDetails =bookingDBUtil.getBookingDetails(id);
	        request.setAttribute("bookingDetails", bookingDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("viewbookingdetails.jsp");/*if customer details successfully updated
			navigate to the user account page with updated details */
			dis.forward(request, response);
		}
		else {
			List<booking> bookingDetails = bookingDBUtil.getBookingDetails(id);
			request.setAttribute("bookingDetails", bookingDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("viewbookingdetails.jsp");/*if customer details successfully updated
			navigate to the user account page with current details */
			dis.forward(request, response);
		}

	}

}
