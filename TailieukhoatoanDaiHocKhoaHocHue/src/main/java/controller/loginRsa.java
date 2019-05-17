package controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.UIManager;

import rsa.GenerateKeys;
import rsa.MainApp;

/**
 * Servlet implementation class loginRsa
 */
public class loginRsa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginRsa() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {
			new GenerateKeys(1024).generateKeysToFile();
			MainApp frame = new MainApp();
			frame.setVisible(true);
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
			RequestDispatcher rd = request.getRequestDispatcher("signin.jsp");
			  rd.forward(request, response);;
		} catch (Exception e) {
			e.printStackTrace();
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
