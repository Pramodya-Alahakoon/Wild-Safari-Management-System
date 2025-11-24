package admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import booking.booking;
import model.bookingDBUtil;

/**
 * Servlet implementation class Bookingallservlet
 */
@WebServlet("/Bookingallservlet")
public class Bookingallservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bookingallservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
    				
    				List<booking> bookingdetail = bookingDBUtil.getbookingDetails();
    				request.setAttribute("bookingdetail", bookingdetail);
    			
    		}
    		catch(Exception e) {
    			e.printStackTrace();
    			System.out.println("booking servlet is not connected!");
    		}
    			RequestDispatcher dis = request.getRequestDispatcher("viewallbooking.jsp");
    			dis.forward(request, response);
    		}

}
