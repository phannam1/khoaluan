package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import beans.constants;
import dao.documentDAO;
import dao.newsDAO;
import dao.questionDAO;
import dto.accountDTO;
import dto.documentDTO;
import dto.newsDTO;
import dto.questionDTO;

/**
 * Servlet implementation class CheckAccountLogin
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/CheckAccountLogin" })
public class CheckAccountLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	checkLogin check = null;
	documentDAO dao =null;
	newsDAO newsDao = null;
	questionDAO quesDao = null;
    public CheckAccountLogin() {
       check = new checkLogin();
       dao = new documentDAO(); 
       newsDao = new newsDAO();
       quesDao = new questionDAO();
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
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
			list = dao.readAllDocumentShowlimit();
			request.setAttribute("listDocument", list);
			List<newsDTO> listNews = new ArrayList<>();
			listNews = newsDao.readAllLimit();
			request.setAttribute("listNews", listNews);
			request.setAttribute("account", Usersession);
			 List<questionDTO> listQuestion = new ArrayList<>();
			  listQuestion = quesDao.readAllQuestionLimit()
					  ;
				request.setAttribute("listQuestion", listQuestion);
			RequestDispatcher rd = request.getRequestDispatcher("index");
			  rd.forward(request, response);	
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
			  listQuestion = quesDao.readAllQuestionLimit();
				request.setAttribute("listQuestion", listQuestion);
			RequestDispatcher rd = request.getRequestDispatcher("index");
			  rd.forward(request, response);	
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
