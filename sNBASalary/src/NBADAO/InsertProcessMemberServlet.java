package NBADAO;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member.do")
public class InsertProcessMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Collection<String> errorMessage = new ArrayList<String>();
		request.setAttribute("ErrorMsg", errorMessage);
		request.setCharacterEncoding("UTF-8");

		String NAME = request.getParameter("inNAME");
		if (NAME == null || NAME.trim().length() == 0) {
			errorMessage.add("請輸入球員姓名");
		}
		String TEAM = request.getParameter("inTEAM");
		if (TEAM == null || TEAM.trim().length() == 0) {
			errorMessage.add("請選擇球員隊伍");
		}
		String POS = request.getParameter("inPOS");
		if (POS == null || POS.trim().length() == 0) {
			errorMessage.add("請輸入球員位置");
		}

		String money = request.getParameter("insalary");
		int SALARY = 0;
		if (money != null && money.trim().length() > 0) {
			try {
				SALARY = Integer.parseInt(money);
			} catch (NumberFormatException e) {
				errorMessage.add("請輸入球員薪資");
			}
		}
		String id = request.getParameter("inNO");
		int NO = 0;
		if (id != null && id.trim().length() > 0) {
			try {
				NO = Integer.parseInt(id);
			} catch (NumberFormatException e) {
				errorMessage.add("請輸入球員編號");
			}

		}

		String SEASON = request.getParameter("inseason");

		nbaSalaryBean mb = new nbaSalaryBean(NO, NAME, POS, TEAM, SEASON, SALARY);
		nbaSalaryDAO service = new nbaSalaryDAO();
		try {
			service.insert(mb);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("memberBean", mb);
		RequestDispatcher rd = request.getRequestDispatcher("InsertNBASuccess.jsp");
		rd.forward(request, response);
		return;

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Collection<String> errorMessage = new ArrayList<String>();
		request.setAttribute("ErrorMsg", errorMessage);
		request.setCharacterEncoding("UTF-8");

		String NAME = request.getParameter("inNAME");
		if (NAME == null || NAME.trim().length() == 0) {
			errorMessage.add("請輸入球員姓名");
		}
		String TEAM = request.getParameter("inTEAM");
		if (TEAM == null || TEAM.trim().length() == 0) {
			errorMessage.add("請選擇球員隊伍");
		}
		String POS = request.getParameter("inPOS");
		if (POS == null || POS.trim().length() == 0) {
			errorMessage.add("請輸入球員位置");
		}

		String money = request.getParameter("inSALARY");
		int SALARY = 0;
		if (money != null && money.trim().length() > 0) {
			try {
				SALARY = Integer.parseInt(money);
			} catch (NumberFormatException e) {
				errorMessage.add("請輸入球員薪資");

			}

		}

		String id = request.getParameter("inNO");
		int NO = 0;
		if (id != null && id.trim().length() > 0) {
			try {
				NO = Integer.parseInt(id);
			} catch (NumberFormatException e) {
				errorMessage.add("請輸入球員編號");
			}

		}
		String SEASON = request.getParameter("inSEASON");

		nbaSalaryBean mb = new nbaSalaryBean(NO, NAME, POS, TEAM, SEASON, SALARY);
		nbaSalaryDAO service = new nbaSalaryDAO();
		try {
			service.insert(mb);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("memberBean", mb);
		RequestDispatcher rd = request.getRequestDispatcher("InsertNBASuccess.jsp");
		rd.forward(request, response);
		return;

	}
}
