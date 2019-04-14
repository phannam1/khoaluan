package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.constants;
import dao.questionDAO;
import dto.accountDTO;

/**
 * Servlet implementation class updateYourQuestion
 */
public class updateYourQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	questionDAO dao = null;
	checkLogin check = null;
	
    public updateYourQuestion() {
       check = new checkLogin();
       dao = new questionDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		accountDTO Usersession = (accountDTO)session.getAttribute(constants.USER_SESSION);	
		String content = request.getParameter("content");
		String id = request.getParameter("questionId");
		int questionId = Integer.parseInt(id);
		if(content.equals("")) {
			
			String message = "Vui lòng nhập nội dung câu hỏi";
			request.setAttribute("error", message);
			request.getRequestDispatcher("question").forward(request, response);
		}else {
			if(check.checkSession(Usersession)) {
				if(dao.updateYourQuestion(content, Usersession.getAccountId(),questionId)) {
					response.sendRedirect(request.getContextPath()+"/question");
					System.out.println(request.getContextPath()+"/question");
				}else {
					response.sendRedirect(request.getContextPath()+"/question");
				}
			}else {
				response.sendRedirect(request.getContextPath()+"/index");
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
