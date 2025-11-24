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
 * Servlet implementation class Userservlet
 */
@WebServlet("/Userservlet")
public class Userservlet extends HttpServlet {
private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		    
		String firstname = request.getParameter("firstname");//save the name that customer entered in variable
		
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String birthday = request.getParameter("birthday");
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;//catch the return value by the variable
		
		isTrue = userDBUtil.insertuser(firstname,lastname,email,birthday, phone,type, username, password);
		
		if(isTrue == true) {//check the database connection success or not
			 out.println("<script type=\"text/javascript\">");
			    out.println("alert('User account registered successfully!');");
			    out.println("window.location.href = 'login.jsp';"); // Redirect to your registration page
			    out.println("</script>");
		} else {
		    // Replace the RequestDispatcher with a JavaScript alert
		   
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert('User account not registered successfully!');");
		    out.println("window.location.href = 'registrationuser.jsp';"); // Redirect to your registration page
		    out.println("</script>");
		}
		
		
	}
}
