package user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.login;
import model.userDBUtil;



/**
 * Servlet implementation class Userupdateservlet
 */
@WebServlet("/Userupdateservlet")
public class Userupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // Capture the parameters from the request
	        String iduser = request.getParameter("iduser");
	        String firstname = request.getParameter("firstname");
	        String lastname = request.getParameter("lastname");
	        String email = request.getParameter("email");
	        String birthday = request.getParameter("birthday");
	        String phone = request.getParameter("phone");
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        // Call the database utility to update the user details
	        boolean isTrue = userDBUtil.updateuser(iduser, firstname, lastname, email, birthday, phone, username, password);

	        // Redirect to Home.jsp or handle the error
	        if (isTrue) {
	            request.setAttribute("message", "Profile updated successfully!");
	        } else {
	            request.setAttribute("message", "Profile update failed. Please try again.");
	        }

	        // Forward to Home.jsp
	        RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
	        dis.forward(request, response);
	    }
	}