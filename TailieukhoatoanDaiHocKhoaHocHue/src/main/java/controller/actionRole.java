package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.constants;
import dao.accountDAO;
import dao.roleDAO;
import dto.accountDTO;

/**
 * Servlet implementation class actionRole
 */
public class actionRole extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	roleDAO dao =null;
	accountDAO accDao = null;
    public actionRole() {
        check = new checkLogin();
        dao =  new roleDAO();
        accDao = new accountDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		accountDTO Usersession = (accountDTO)session.getAttribute(constants.USER_SESSION);
		String userName = request.getParameter("chooseUserName");
		
		if(userName.equals("")) {
			String message = "Ban phai nhap vao day";
			request.setAttribute("error", message);
			request.getRequestDispatcher("/roleAdmin").forward(request, response);
			
		}
		else if(accDao.checkUserName(userName)==false) {
			response.sendRedirect(request.getContextPath()+"/roleAdmin");
		}
		int roleId =2;
		String role = request.getParameter("chooseRole");
		if(role.equals("Admin")) {
			 roleId = 1;
		}
		 System.out.println(roleId);
		if(check.checkSession(Usersession)) {	
			if(dao.updateRole(roleId, userName,Usersession.getAccountId())) {
				response.sendRedirect(request.getContextPath()+"/roleAdmin");	
			}
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
