package user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.login;
import model.userDBUtil;

/**
 * Servlet implementation class Userprofileservlet
 */
@WebServlet("/Userprofileservlet")
public class Userprofileservlet extends HttpServlet {
	 private static final long serialVersionUID = 1L;

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // Get the userID from request parameter
	        String userIDStr = request.getParameter("userID");
	        int userID = Integer.parseInt(userIDStr); // Convert String to Integer

	        // Retrieve user details based on userID
	        List<login> loginDetails = userDBUtil.getLoginDetailsById(userID); // Create a new method in userDBUtil
	        request.setAttribute("loginDetails", loginDetails); // Set user details as request attribute
	        
	        // Forward to the JSP page to display profile
	        request.getRequestDispatcher("userprofile.jsp").forward(request, response);
	    }
	}