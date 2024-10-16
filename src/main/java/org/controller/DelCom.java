package org.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mis.ConnectionProvider;

/**
 * Servlet implementation class DelCom
 */
@WebServlet("/DelCom")
public class DelCom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelCom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("uname");
		String cname=request.getParameter("cname");
		PreparedStatement pstm;
		int i=0;
		try {
			
			Connection con=ConnectionProvider.createC();
			pstm=con.prepareStatement("delete from comments where uname=? and cname=?");
			pstm.setString(1,name);
			pstm.setString(2,cname);
			i=pstm.executeUpdate();
		}catch(Exception e) {}
		response.sendRedirect("content.jsp?conname="+cname);
		
	}


}
