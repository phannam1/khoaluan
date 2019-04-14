package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.constants;
import dao.accountDAO;
import dto.accountDTO;

/**
 * Servlet implementation class LockAccount
 */
public class LockAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	accountDAO dao = null;
    public LockAccount() {
       check = new checkLogin();
       dao = new accountDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		accountDTO Usersession = (accountDTO)session.getAttribute(constants.USER_SESSION);
		String accountId = request.getParameter("accountId");
		int id = Integer.parseInt(accountId);
		int isactive = 0;
		if(check.checkSession(Usersession)) {
			if(dao.updateIsActive(isactive, Usersession.getAccountId(), id)) {
				response.sendRedirect(request.getContextPath()+"/accountAdmin");
			}else {
				response.sendRedirect(request.getContextPath()+"/accountAdmin");
			}
		}
		else {
			response.sendRedirect(request.getContextPath()+"/index");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
