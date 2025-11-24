package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.feedbackDBUtil;

/**
 * Servlet implementation class Feedbackdeleteservlet
 */
@WebServlet("/Feedbackdeleteservlet")
public class Feedbackdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedbackdeleteservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String feedbackid = request.getParameter("feedbackid"); // Get the booking ID from the request
        boolean isTrue;

        // Call the database utility method to delete the booking
        isTrue = feedbackDBUtil.deleteFeedback(feedbackid);

        if (isTrue) {
        	
           
            // Redirect with success message
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Your feedback has been deleted. ');");
            out.println("window.location.href='allfeedback?';"); // Redirect to the booking page
            out.println("</script>");
            out.println("</body></html>");
        } else {
            // If deletion fails, show an error message
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Cannot delete feedback.');");
            out.println("window.location.href='allfeedback?';"); // Redirect back to booking details
            out.println("</script>");
            out.println("</body></html>");
        }
    }

}
