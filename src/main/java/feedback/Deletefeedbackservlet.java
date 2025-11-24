package feedback;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.feedbackDBUtil;

/**
 * Servlet implementation class Deletefeedbackservlet
 */
@WebServlet("/Deletefeedbackservlet")
public class Deletefeedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String feedbackid = request.getParameter("feedbackid"); // Get the booking ID from the request
	        boolean isTrue;

	        // Call the database utility method to delete the booking
	        isTrue = feedbackDBUtil.deleteFeedback(feedbackid);

	        if (isTrue) {
	            Integer userID = (Integer) request.getSession().getAttribute("userID");
	            // Do not invalidate the session, just retain the userID
	            response.setContentType("text/html");
	            PrintWriter out = response.getWriter();
	            out.println("<html><body>");
	            out.println("<script type='text/javascript'>");
	            out.println("alert('Your feedback has been deleted.');");
	            out.println("window.location.href='Home.jsp?userID=" + userID + "';");
	            out.println("</script>");
	            out.println("</body></html>");
	        } else {
	            // If deletion fails, show an error message
	            response.setContentType("text/html");
	            PrintWriter out = response.getWriter();
	            out.println("<html><body>");
	            out.println("<script type='text/javascript'>");
	            out.println("alert('Cannot delete feedback.');");
	            out.println("window.location.href='viewfeedbackdetails.jsp';");
	            out.println("</script>");
	            out.println("</body></html>");
	        }
	    }
	}