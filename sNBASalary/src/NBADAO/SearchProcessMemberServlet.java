package NBADAO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/semember.do")
public class SearchProcessMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Collection<String> errorMessage = new ArrayList<String>();
		request.setAttribute("ErrorMsg", errorMessage);
		request.setCharacterEncoding("UTF-8");


		String id = request.getParameter("inNO");
		
	
		nbaSalaryDAO service = new nbaSalaryDAO();
			
		request.setAttribute("memberBean", service.select(id));
		RequestDispatcher rd = request.getRequestDispatcher("SearchNBASuccess.jsp");
		rd.forward(request, response);
		return;

	}
}
