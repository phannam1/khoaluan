package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.constants;
import dao.majorDAO;
import dto.accountDTO;
import dto.majorDTO;

/**
 * Servlet implementation class updateMajor
 */
public class updateMajor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	majorDAO dao = null;
    public updateMajor() {
      check = new checkLogin();
      dao = new majorDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		accountDTO Usersession = (accountDTO)session.getAttribute(constants.USER_SESSION);
		if(check.checkSession(Usersession)) {
			String majorName = request.getParameter("majorName");
			String majorId= request.getParameter("majorId");
			int id = Integer.parseInt(majorId);
			if(dao.updateMajor(id, majorName, Usersession.getAccountId())) {
				response.sendRedirect(request.getContextPath()+"/majorAdmin");
			}else {
				response.sendRedirect(request.getContextPath()+"/majorAdmin");
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
