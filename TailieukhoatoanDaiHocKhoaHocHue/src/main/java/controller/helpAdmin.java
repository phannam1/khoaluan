package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.constants;
import dao.helpDAO;
import dto.accountDTO;
import dto.helpDTO;

/**
 * Servlet implementation class helpAdmin
 */
public class helpAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	helpDAO dao = null;
    public helpAdmin() {
       check = new checkLogin();
       dao = new helpDAO();
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
			List<helpDTO> list = new ArrayList<helpDTO>();
			list = dao.readAll();
			request.setAttribute("listHelp", list);
			request.setAttribute("account", Usersession);
			RequestDispatcher rd = request.getRequestDispatcher("helpAdmin.jsp");
			  rd.forward(request, response);;
		}
		else {
			response.sendRedirect(request.getContextPath()+"/index.jsp");
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
