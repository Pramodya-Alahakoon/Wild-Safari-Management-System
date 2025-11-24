package user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.userDBUtil;



/**
 * Servlet implementation class Userdeleteservlet
 */
@WebServlet("/Userdeleteservlet")
public class Userdeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String iduser = request.getParameter("iduser"); // Get the booking ID from the request
        boolean isTrue;

        // Call the database utility method to delete the booking
        isTrue = userDBUtil.deleteuser(iduser);

        if (isTrue) {
            request.getSession().invalidate(); // Optionally invalidate the session
            // Redirect with success message
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Your account has been deleted. Please create a new account.');");
            out.println("window.location.href='login.jsp';"); // Redirect to the booking page
            out.println("</script>");
            out.println("</body></html>");
        } else {
            // If deletion fails, show an error message
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Cannot delete account.');");
            out.println("window.location.href='userprofile.jsp';"); // Redirect back to booking details
            out.println("</script>");
            out.println("</body></html>");
        }
    }
}