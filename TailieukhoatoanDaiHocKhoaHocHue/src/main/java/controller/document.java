package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import beans.constants;
import dao.categoryDAO;
import dao.documentDAO;
import dao.majorDAO;
import dao.subjectDAO;
import dao.teacherDAO;
import dto.accountDTO;
import dto.categoryDTO;
import dto.documentDTO;
import dto.majorDTO;
import dto.subjectDTO;
import dto.teacherDTO;

/**
 * Servlet implementation class document
 */
@WebServlet("/document")
public class document extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	documentDAO dao = null;
	majorDAO daoMajor = null;
 	categoryDAO daoCate = null;
 	subjectDAO daoSub = null;
 	teacherDAO daoTeacher =null;
	public document() {
        check = new checkLogin();
        dao = new documentDAO();
        daoMajor = new majorDAO();
        daoCate = new categoryDAO();
        daoSub = new subjectDAO();
        daoTeacher =  new teacherDAO();
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
			List<documentDTO> list = new ArrayList<documentDTO>();
			
			list = dao.readAllDocumentShow();
			request.setAttribute("listDocument", list);
			List<documentDTO> list1 = new ArrayList<documentDTO>();
			list1 = dao.searchDownloads();
			
			request.setAttribute("listDownloads", list1);
			request.setAttribute("account", Usersession);
			List<majorDTO> listMajor = new ArrayList<majorDTO>();
			listMajor = daoMajor.readAllMajor();
			request.setAttribute("listMajor", listMajor);
			List<categoryDTO> listCategory = new ArrayList<categoryDTO>();
			listCategory = daoCate.readAllCategory();
			request.setAttribute("listCategory", listCategory);
			List<subjectDTO> listSubject = new ArrayList<subjectDTO>();
			listSubject = daoSub.readAllSubject();
			request.setAttribute("listSubject", listSubject);
			List<teacherDTO> listTeacher = new ArrayList<teacherDTO>();
			listTeacher = daoTeacher.readAllTeacher();
			request.setAttribute("listTeacher", listTeacher);
			RequestDispatcher rd = request.getRequestDispatcher("document.jsp");
			  rd.forward(request, response);;
		}
		else {
			response.sendRedirect(request.getContextPath()+"/signin.jsp");
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
