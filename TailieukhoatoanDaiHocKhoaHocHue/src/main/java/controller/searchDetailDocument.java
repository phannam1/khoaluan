package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
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
 * Servlet implementation class searchDetailDocument
 */
public class searchDetailDocument extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	documentDAO dao = null;
	checkLogin check = null;
	majorDAO daoMajor = null;
	categoryDAO daoCate = null;
	subjectDAO daoSub = null;
	teacherDAO daoTeacher = null;

	public searchDetailDocument() {
		dao = new documentDAO();
		check = new checkLogin();
		daoMajor = new majorDAO();
		daoCate = new categoryDAO();
		daoSub = new subjectDAO();
		daoTeacher = new teacherDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		accountDTO Usersession = (accountDTO) session.getAttribute(constants.USER_SESSION);
		String nameDocument = request.getParameter("nameDocument");

		String major = request.getParameter("major");
		String category = request.getParameter("category");
		String semester = request.getParameter("semester");
		String subject = request.getParameter("subject");
		String courseCredit = request.getParameter("courseCredit");
		int CourseCredit = Integer.parseInt(courseCredit);
		String nameTeacher = request.getParameter("nameTeacher");

		documentDTO document = new documentDTO(nameDocument, major, category, semester, subject, CourseCredit,
				nameTeacher);

		if (check.checkSession(Usersession)) {
			List<documentDTO> list = new ArrayList<documentDTO>();
			list = dao.searchDetailDocument(document);
			request.setAttribute("listDocument", list);
			request.setAttribute("account", Usersession);
			if(list.size()==0) {
				String message = "Không tồn tại dữ liệu tương ứng ";
				request.setAttribute("error", message);
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
				rd.forward(request, response);
				System.out.println("search success");
			}else {
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
				rd.forward(request, response);
				System.out.println("search success");	
			}
			

		} else {
			response.sendRedirect(request.getContextPath() + "/index");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
