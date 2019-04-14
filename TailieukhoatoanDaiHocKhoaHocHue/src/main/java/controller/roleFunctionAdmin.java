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
import dao.functionDAO;
import dao.roleFunctionDAO;
import dto.accountDTO;
import dto.functionDTO;
import dto.roleFunctionDTO;

/**
 * Servlet implementation class roleFunctionAdmin
 */
public class roleFunctionAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	roleFunctionDAO dao = null;
	functionDAO functiondao = null;
    public roleFunctionAdmin() {
        check = new checkLogin();
        dao = new roleFunctionDAO();
        functiondao = new functionDAO();
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
			List<functionDTO> listFunction = new ArrayList<functionDTO>();
			listFunction = functiondao.readAllFuction();
			request.setAttribute("list", listFunction);
			List<roleFunctionDTO> list = new ArrayList<roleFunctionDTO>();
			list =dao.readAllRoleFunction();
			request.setAttribute("listRoleFunction", list);
			request.setAttribute("account", Usersession);
			RequestDispatcher rd = request.getRequestDispatcher("roleFunctionAdmin.jsp");
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
