package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.constants;
import dao.categoryDAO;
import dao.majorDAO;
import dto.accountDTO;
import dto.categoryDTO;
import dto.majorDTO;

/**
 * Servlet implementation class createCategory
 */
public class createCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	categoryDAO dao = null;
    public createCategory() {
    	check = new checkLogin();
        dao = new categoryDAO();
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
			String categoryName = request.getParameter("categoryName");
			categoryDTO category = new categoryDTO(categoryName, Usersession.getAccountId(), Usersession.getAccountId());
			if(dao.createcategory(category)) {
				response.sendRedirect(request.getContextPath()+"/categoryAdmin");
			}else {
				response.sendRedirect(request.getContextPath()+"/categoryAdmin");
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
