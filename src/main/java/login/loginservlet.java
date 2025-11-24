package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.userDBUtil;



/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // Get username and password from login form
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validate user
        boolean isValidUser = userDBUtil.validate(username, password);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        if (isValidUser) {
            // Get user type (admin, user, driver, guide)
            String userType = userDBUtil.getUserType();
            
            // Set user id and username as session attributes
            HttpSession session = request.getSession();
            List<login> loginDetails = userDBUtil.getloginDetails2(username);
            login user = loginDetails.get(0);
            
            session.setAttribute("userID", user.getIduser());
            session.setAttribute("username", username);

            // Redirect based on user type
            if (userType.equals("admin")) {
                out.println("<html><body>");
                out.println("<script type='text/javascript'>");
                out.println("alert('Login successful! Redirecting to admin dashboard.');");
                out.println("window.location.href='admindashboard.jsp';"); // Redirect to admin dashboard
                out.println("</script>");
                out.println("</body></html>");
            } else {
                out.println("<html><body>");
                out.println("<script type='text/javascript'>");
                out.println("alert('Login successful! Redirecting to home page.');");
                out.println("window.location.href='Home.jsp';"); // Redirect to home page for other users
                out.println("</script>");
                out.println("</body></html>");
            }
        } else {
            // If login fails, display alert message
            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Invalid username or password. Please try again.');");
            out.println("window.location.href='login.jsp';"); // Redirect to login page
            out.println("</script>");
            out.println("</body></html>");
        }
           
    }
}