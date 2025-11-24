package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.guideDBUtil;

/**
 * Servlet implementation class Guideinsertservlet
 */
@WebServlet("/Guideinsertservlet")
public class Guideinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
				 
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		int experience = Integer.parseInt(request.getParameter("experience"));
		String languages = request.getParameter("languages");
		String bio = request.getParameter("bio");

		// Call the method to insert guide details into the database
		boolean isInserted = guideDBUtil.insertGuide(firstname, lastname, email, phone, experience, languages, bio);

		// Forwarding to the appropriate page based on the success of the operation
		if(isInserted == true) {//check the database connection success or not
			 out.println("<script type=\"text/javascript\">");
			    out.println("alert('account Create successfully!');");
			    out.println("window.location.href = 'admindashboard.jsp';"); // Redirect to your admindashboard page
			    out.println("</script>");
		} else {
		    // Replace the RequestDispatcher with a JavaScript alert
		   
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert('account not create successfully!');");
		    out.println("window.location.href = 'addguide.jsp';"); // Redirect to your addguide page
		    out.println("</script>");
		}
	}
}