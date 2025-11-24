package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.userDBUtil;

/**
 * Servlet implementation class adminupdateservlet
 */
@WebServlet("/adminupdateservlet")
public class adminupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve admin details from the request form
        int userID = Integer.parseInt(request.getParameter("userID"));
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String birthday = request.getParameter("birthday");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Call the method to update admin details in the database
        boolean isUpdated = userDBUtil.updateadmin(userID, firstname, lastname, email, birthday, phone, username, password);

        // Redirect to the profile page or show error based on the result
        if (isUpdated) {
            response.sendRedirect("adminprofileservlet?userID=" + userID + "&message=Update successful");
        } else {
            response.sendRedirect("adminprofileedit.jsp?error=Update failed");
        }

    }
}