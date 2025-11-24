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
 * Servlet implementation class Insertfeedbackservlet
 */
@WebServlet("/Insertfeedbackservlet")
public class Insertfeedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		    
		 	String name = request.getParameter("name");
		 	String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String message = request.getParameter("message");
			String rating = request.getParameter("rating");
			
			
			
			
		
		boolean isTrue;//catch the return value by the variable
		
		isTrue = feedbackDBUtil.insertfeedback(name,email,phone,message,rating);
		
		if(isTrue == true) {//check the database connection success or not
			 out.println("<script type=\"text/javascript\">");
			    out.println("alert(' Feedback Add successfully!');");
			    out.println("window.location.href = 'Home.jsp';"); // Redirect to your registration page
			    out.println("</script>");
		} else {
		    // Replace the RequestDispatcher with a JavaScript alert
		   
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert('Feedback Add Unsuccessfully!');");
		    out.println("window.location.href = 'feedback.jsp';"); // Redirect to your registration page
		    out.println("</script>");
		}
	}

}
