package admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.guideDBUtil;

/**
 * Servlet implementation class Guideallviewservlet
 */
@WebServlet("/Guideallviewservlet")
public class Guideallviewservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Guideallviewservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			List<guide> guidedetail = guideDBUtil.getAllGuides();
			request.setAttribute("guidedetail", guidedetail);
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("Guide servlet is not connected!");
	}
		RequestDispatcher dis = request.getRequestDispatcher("viewallguide.jsp");
		dis.forward(request, response);
	}

}
