package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.constants;
import dao.subjectDAO;
import dto.accountDTO;

/**
 * Servlet implementation class deleteSubject
 */
public class deleteSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	subjectDAO dao = null;
    public deleteSubject() {
    	check = new checkLogin();
        dao = new subjectDAO();
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
			
			String subjectId= request.getParameter("subjectId");
			int id = Integer.parseInt(subjectId);
			if(dao.deleteSubject(id)) {
				response.sendRedirect(request.getContextPath()+"/subjectAdmin");
			}else {
				response.sendRedirect(request.getContextPath()+"/subjectAdmin");
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
