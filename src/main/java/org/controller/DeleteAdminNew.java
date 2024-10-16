package org.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mis.ConnectionProvider;
import org.model.bean.Deletebean;
import org.model.dao.DeleteAdminDao;

/**
 * Servlet implementation class DeleteAdminNew
 */
@WebServlet("/DeleteAdminNew")
public class DeleteAdminNew extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAdminNew() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String coname=request.getParameter("cname");
		HttpSession session =request.getSession();
		String cname=coname.replace("+", " ");
		Deletebean dbean=new Deletebean();
		dbean.setCname(cname);
		DeleteAdminDao ad=new DeleteAdminDao();
		
		
		
		try { Connection con1;
		PreparedStatement pstm1;
		ResultSet rs1;
		String cname1,contentName ,pic,pic1 = null;
	
	con1=ConnectionProvider.createC();
	pstm1=con1.prepareStatement("select picture from content where Cname=?");
	pstm1.setString(1,coname);
	rs1=pstm1.executeQuery();
	while(rs1.next()){

	pic1=rs1.getString(1);
	
	}
		
		
		
		String file_name=pic1;
		System.out.println(file_name);
		try {
			File file=new File("F:/web project/Pro/src/main/webapp/images/content/"+file_name);
			if(file.delete())
			{
				System.out.println("deleted");
			}
			else
			{
				System.out.println(" not deleted");
			}
		}
		catch(Exception e) {
			System.out.println("error");
		}
		}
		catch(Exception e) {}
		ad.fun(dbean);
		response.sendRedirect("AdminDelete.jsp");


	}
	

}
