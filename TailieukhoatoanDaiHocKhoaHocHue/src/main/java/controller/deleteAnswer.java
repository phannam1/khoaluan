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
import dao.answerDAO;
import dao.questionDAO;
import dto.accountDTO;
import dto.answerDTO;
import dto.questionDTO;

/**
 * Servlet implementation class deleteAnswer
 */
public class deleteAnswer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	answerDAO dao = null;
	checkLogin check = null;
	questionDAO quesDao = null;
    public deleteAnswer() {
       dao = new answerDAO();
       check = new checkLogin();
       quesDao = new questionDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		accountDTO Usersession = (accountDTO)session.getAttribute(constants.USER_SESSION);	
		String id = request.getParameter("questionId");
		int questionId = Integer.parseInt(id);
		String Id = request.getParameter("answerId1");
		int answerId = Integer.parseInt(Id);
		if(check.checkSession(Usersession)) {
			if(dao.deleteAnswer(answerId,questionId)) {
				questionDTO question = quesDao.readAllQuestionByQuestionId(questionId);
				List<answerDTO> list = new ArrayList<answerDTO>();
				list = dao.readAllAnswer(questionId);
				request.setAttribute("account", Usersession);
				request.setAttribute("question", question);
				request.setAttribute("listAnswer", list);			
				RequestDispatcher rd = request.getRequestDispatcher("answer.jsp");
				  rd.forward(request, response);
				
			}else {
				questionDTO question = quesDao.readAllQuestionByQuestionId(questionId);
				List<answerDTO> list = new ArrayList<answerDTO>();
				list = dao.readAllAnswer(questionId);
				request.setAttribute("account", Usersession);
				request.setAttribute("question", question);
				request.setAttribute("listAnswer", list);			
				RequestDispatcher rd = request.getRequestDispatcher("answer.jsp");
				  rd.forward(request, response);
			}
			
			
		}else {
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
