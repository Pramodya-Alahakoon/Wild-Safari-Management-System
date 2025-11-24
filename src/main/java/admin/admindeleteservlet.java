package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.userDBUtil;

/**
 * Servlet implementation class admindeleteservlet
 */
@WebServlet("/admindeleteservlet")
public class admindeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String iduser = request.getParameter("iduser");
        boolean isTrue = userDBUtil.deleteuser(iduser);

        if (isTrue) {
            request.getSession().invalidate(); // Optionally invalidate the session
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Your account has been deleted. Please create a new account.');");
            out.println("window.location.href='login.jsp';");
            out.println("</script>");
            out.println("</body></html>");
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<script type='text/javascript'>");
            out.println("alert('Cannot delete account.');");
            out.println("window.location.href='admindashboard.jsp';");
            out.println("</script>");
            out.println("</body></html>");
        }
    }
}