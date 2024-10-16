package org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.UserBean;
import org.model.dao.RegisterDao;

/**
 * Servlet implementation class avat
 */
@WebServlet("/avat")
public class avat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public avat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String name=request.getParameter("uname");
		String email=request.getParameter("uemail");
		String avatar=request.getParameter("avatar");
		String pass=request.getParameter("upass");
		UserBean ubean=new UserBean();
		ubean.setName(name);
		ubean.setEmail(email);
		ubean.setAvatar(avatar);
		ubean.setPass(pass);
		RegisterDao rd=new RegisterDao();
		int status=rd.insert(ubean);
		if(status!=0)
		{	RequestDispatcher rd1=request.getRequestDispatcher("Login");
			rd1.forward(request,response);
		}
		else
		{
			response.sendRedirect("Login_reg.jsp?msg=invalidr");
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
