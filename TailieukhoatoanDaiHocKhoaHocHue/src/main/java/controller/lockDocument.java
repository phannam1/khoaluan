package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.constants;
import dao.documentDAO;
import dto.accountDTO;

/**
 * Servlet implementation class lockDocument
 */
public class lockDocument extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	checkLogin check = null;
	documentDAO dao = null;

	public lockDocument() {
		check = new checkLogin();
		dao = new documentDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		accountDTO Usersession = (accountDTO) session.getAttribute(constants.USER_SESSION);
		String id = request.getParameter("documentId");
		int documentId = Integer.parseInt(id);
		if (check.checkSession(Usersession)) {
			if (dao.lockDocument(Usersession.getAccountId(), documentId)) {
				response.sendRedirect(request.getContextPath() + "/documentAdmin");
			} else {
				response.sendRedirect(request.getContextPath() + "/documentAdmin");
			}
		} else {
			response.sendRedirect(request.getContextPath() + "/index");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
