package org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.AdminBean;
import org.model.dao.AdminLoginDao;
import org.model.dao.LoginDao;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("Aname");
		String pass=request.getParameter("Apass");
		HttpSession session =request.getSession();
		AdminBean abean=new AdminBean();
		abean.setName(name);
		abean.setPass(pass);
		
		
		AdminLoginDao ld=new AdminLoginDao();
		boolean status=ld.login(abean);
		if(status)
		{	
			session.setAttribute("Name",name);
			response.sendRedirect("home.jsp");
					
		}
		else
		{	
			response.sendRedirect("Login_reg.jsp?msg=invalid");
		}
	
	}

}
