package controller;

import java.awt.event.ItemEvent;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.jasper.tagplugins.jstl.core.Param;

import beans.constants;
import dao.documentDAO;
import dto.accountDTO;
import dto.documentDTO;



/**
 * Servlet implementation class upload
 */
public class upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	documentDAO dao = null;
    public upload() {
        dao = new documentDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Hashtable params = new Hashtable<>();
			ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
			List<FileItem> multifiles = sf.parseRequest(request);
			String linkData = "";
			System.out.println("123");
			for (FileItem item : multifiles) {
				if(item.isFormField()) {
					params.put(item.getFieldName(), item.getString());
				}
				else {
					SimpleDateFormat dt = new SimpleDateFormat("yyyy_mm_dd_hh_mm_ss"); 
					String Link =dt.format(new Date()) + item.getName();
					item.write(new File("D:\\New folder (2)\\khoaluan\\TailieukhoatoanDaiHocKhoaHocHue\\src\\main\\webapp\\data\\"+Link));

					linkData = "data/" + Link;
				}
			}
			response.setContentType("text/html;charset=UTF-8");
	        request.setCharacterEncoding("UTF-8");
	        HttpSession session = request.getSession();
			accountDTO Usersession = (accountDTO)session.getAttribute(constants.USER_SESSION);
			if(Usersession.getRoleId()==1) {
				String nameDocument = (String ) params.get("nameDocument");
				byte[] bytes = nameDocument.getBytes(StandardCharsets.ISO_8859_1);
				nameDocument = new String(bytes, StandardCharsets.UTF_8);
				String major =  (String ) params.get("major");
				byte[] bytes1 = major.getBytes(StandardCharsets.ISO_8859_1);
				major = new String(bytes1, StandardCharsets.UTF_8);
				String semester = (String ) params.get("semester");	
				byte[] bytes4 = semester.getBytes(StandardCharsets.ISO_8859_1);
				semester = new String(bytes4, StandardCharsets.UTF_8);
				String subject = (String ) params.get("subject");
				byte[] bytes2 = subject.getBytes(StandardCharsets.ISO_8859_1);
				subject = new String(bytes2, StandardCharsets.UTF_8);
				String courseCredit = (String ) params.get("courseCredit");
				int CourseCredit = Integer.parseInt(courseCredit);
				String category = (String ) params.get("category");	
				byte[] bytes43 = category.getBytes(StandardCharsets.ISO_8859_1);
				category = new String(bytes43, StandardCharsets.UTF_8);
				String nameTeacher = (String ) params.get("nameTeacher");
				byte[] bytes3 = nameTeacher.getBytes(StandardCharsets.ISO_8859_1);
				nameTeacher = new String(bytes3, StandardCharsets.UTF_8);
				int id = Usersession.getAccountId(); 
				int active = 1;
			
				documentDTO document = new documentDTO(nameDocument, major, semester, subject, CourseCredit, nameTeacher,category,  linkData,active, id, id);
				if(dao.registerDocumentAdmin(document)) {
					response.sendRedirect(request.getContextPath()+"/index");
					
				}
				else {
					response.sendRedirect(request.getContextPath()+"/index");
				}
			}else {
				String nameDocument = (String ) params.get("nameDocument");
				byte[] bytes = nameDocument.getBytes(StandardCharsets.ISO_8859_1);
				nameDocument = new String(bytes, StandardCharsets.UTF_8);
				String major =  (String ) params.get("major");
				byte[] bytes1 = major.getBytes(StandardCharsets.ISO_8859_1);
				major = new String(bytes1, StandardCharsets.UTF_8);
				String semester = (String ) params.get("semester");	
				byte[] bytes4 = semester.getBytes(StandardCharsets.ISO_8859_1);
				semester = new String(bytes4, StandardCharsets.UTF_8);
				String subject = (String ) params.get("subject");
				byte[] bytes2 = subject.getBytes(StandardCharsets.ISO_8859_1);
				subject = new String(bytes2, StandardCharsets.UTF_8);
				String courseCredit = (String ) params.get("courseCredit");
				int CourseCredit = Integer.parseInt(courseCredit);
				String category = (String ) params.get("category");	
				byte[] bytes43 = category.getBytes(StandardCharsets.ISO_8859_1);
				category = new String(bytes43, StandardCharsets.UTF_8);
				String nameTeacher = (String ) params.get("nameTeacher");
				byte[] bytes3 = nameTeacher.getBytes(StandardCharsets.ISO_8859_1);
				nameTeacher = new String(bytes3, StandardCharsets.UTF_8);
				int id = Usersession.getAccountId(); 
				int active = 0;
				documentDTO document = new documentDTO(nameDocument, major, semester, subject, CourseCredit, nameTeacher,category,  linkData,active, id, id);
				if(dao.registerDocumentAdmin(document)) {
					response.sendRedirect(request.getContextPath()+"/index");
				}
				else {
					response.sendRedirect(request.getContextPath()+"/index");
				}
			}
			
			
		}catch(Exception ex) {
			System.out.print(ex);	
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
