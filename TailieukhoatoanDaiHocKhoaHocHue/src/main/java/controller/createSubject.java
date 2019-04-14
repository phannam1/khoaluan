package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.constants;
import dao.majorDAO;
import dao.subjectDAO;
import dto.accountDTO;
import dto.majorDTO;
import dto.subjectDTO;

/**
 * Servlet implementation class createSubject
 */
public class createSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	subjectDAO dao = null;
    public createSubject() {
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
			String subjectName = request.getParameter("subjectName");
			subjectDTO subject = new subjectDTO(subjectName, Usersession.getAccountId(), Usersession.getAccountId());
			if(dao.createSubject(subject)) {
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
