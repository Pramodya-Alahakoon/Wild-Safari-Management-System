package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.feedbackDBUtil;

/**
 * Servlet implementation class Allfeedbackservlet
 */
@WebServlet("/Allfeedbackservlet")
public class Allfeedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 public Allfeedbackservlet() {
	        super();
	    }

	    // Handle GET requests
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        processRequest(request, response);
	    }

	    // Handle POST requests
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        processRequest(request, response);
	    }

	    // Common method to handle both GET and POST
	    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        try {
	            // Get feedback details from the database
	            List<feedback> feedbackList = feedbackDBUtil.getfeedbackDetails();
	            request.setAttribute("feedbackList", feedbackList);
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.out.println("Error in fetching feedback details!");
	        }

	        // Forward to the JSP page
	        RequestDispatcher dispatcher = request.getRequestDispatcher("viewallfeedback.jsp");
	        dispatcher.forward(request, response);
	    }
	}