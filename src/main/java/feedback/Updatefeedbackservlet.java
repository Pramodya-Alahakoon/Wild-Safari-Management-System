package feedback;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.feedbackDBUtil;

/**
 * Servlet implementation class Updatefeedbackservlet
 */
@WebServlet("/Updatefeedbackservlet")
public class Updatefeedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		//save the details that entered by student
		 String feedbackid = request.getParameter("feedbackid");//id is the parameter name of ID in studentprofile page inside url tag
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			
			String phone = request.getParameter("phone");
			
			String message = request.getParameter("message");
			String rating = request.getParameter("rating");
		
		boolean isTrue;
		
		isTrue = feedbackDBUtil.updatefeedback(feedbackid,name,email,phone,message,rating);//parameters used in updatestudent method in studentDBUtil class
		
		 if (isTrue) {
	            List<feedback> feedbackDetails = feedbackDBUtil.getFeedbackDetails(feedbackid);
	            request.setAttribute("feedbackDetails", feedbackDetails);
	            // JavaScript message for success
	            out.println("<script>alert('Update successful!');</script>");
	            // Include the JSP page with the message
	            RequestDispatcher dis = request.getRequestDispatcher("viewfeedbackdetails.jsp");
	            dis.include(request, response);
	        } else {
	        	List<feedback> feedbackDetails = feedbackDBUtil.getFeedbackDetails(feedbackid);
	            request.setAttribute("feedbackDetails", feedbackDetails);
	            // JavaScript message for failure
	            out.println("<script>alert('Update unsuccessful. Please try again.');</script>");
	            // Forward to userprofile.jsp for an unsuccessful update
	            RequestDispatcher dis = request.getRequestDispatcher("viewfeedbackdetails.jsp");
	            dis.forward(request, response);
	        }
	}

}