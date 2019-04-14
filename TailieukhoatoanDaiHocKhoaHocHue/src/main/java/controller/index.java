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
import dao.newsDAO;
import dao.questionDAO;
import dao.subjectDAO;
import dao.teacherDAO;
import dto.accountDTO;
import dto.categoryDTO;
import dto.documentDTO;
import dto.majorDTO;
import dto.newsDTO;
import dto.questionDTO;
import dto.subjectDTO;
import dto.teacherDTO;

/**
 * Servlet implementation class index
 */
@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */checkLogin check = null;
     documentDAO dao = null;
 	newsDAO newsDao = null;
 	questionDAO daoQues = null;
 	majorDAO daoMajor = null;
 	categoryDAO daoCate = null;
 	subjectDAO daoSub = null;
 	teacherDAO daoTeacher =null;
    public index() {
        check = new checkLogin();
        dao = new documentDAO();
        newsDao = new newsDAO();
        daoQues = new questionDAO();
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
			request.setAttribute("account", Usersession);	
			List<documentDTO> list = new ArrayList<documentDTO>();
			list = dao.readAllDocumentShowlimit();
			request.setAttribute("listDocument", list);
			List<newsDTO> listNews = new ArrayList<>();
			listNews = newsDao.readAllLimit();
			request.setAttribute("listNews", listNews);	
			  List<questionDTO> listQuestion = new ArrayList<>();
			  listQuestion = daoQues.readAllQuestionLimit();
				request.setAttribute("listQuestion", listQuestion);
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
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				  rd.forward(request, response);;
			
				
		}
		else {
			List<documentDTO> list = new ArrayList<documentDTO>();
			list = dao.readAllDocumentShowlimit();
			request.setAttribute("listDocument", list);
			List<newsDTO> listNews = new ArrayList<>();
			listNews = newsDao.readAllLimit();
			request.setAttribute("listNews", listNews);
			request.setAttribute("account", Usersession);
			List<questionDTO> listQuestion = new ArrayList<>();
			listQuestion = daoQues.readAllQuestionLimit();
			request.setAttribute("listQuestion", listQuestion);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			  rd.forward(request, response);;
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
