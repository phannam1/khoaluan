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
import dao.teacherDAO;
import dto.accountDTO;
import dto.categoryDTO;
import dto.teacherDTO;

/**
 * Servlet implementation class createTeacher
 */
public class createTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	teacherDAO dao = null;
    public createTeacher() {
    	 check = new  checkLogin();
         dao = new  teacherDAO();
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
			String nameTeacher = request.getParameter("nameTeacher");
			String address = request.getParameter("address");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			teacherDTO teacher = new teacherDTO(nameTeacher,address,phone,email, Usersession.getAccountId(), Usersession.getAccountId());
			if(dao.createTeacher(teacher)) {
				response.sendRedirect(request.getContextPath()+"/teacherAdmin");
			}else {
				response.sendRedirect(request.getContextPath()+"/teacherAdmin");
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
