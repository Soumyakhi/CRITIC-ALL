package org.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.model.bean.Contentbean;
import org.model.dao.ContentDao;
import org.model.dao.RegisterDao;

/**
 * Servlet implementation class Content
 */
@WebServlet("/Content")
@MultipartConfig
public class Content extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Content() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		String cname=request.getParameter("cname");
		String rdate=request.getParameter("rd");
		String yl=request.getParameter("yl");
		String genre=request.getParameter("genre");
		String cat=request.getParameter("category");
		String des=request.getParameter("Description");
		String filename=null;
		String Location="F:\\web project\\Pro\\src\\main\\webapp\\images\\content";
		for(Part p : request.getParts()) {
			filename=p.getSubmittedFileName();
			p.write(Location+File.separator+filename);
			
		}
		Contentbean cb=new Contentbean();
		cb.setGenre(genre);
		cb.setYl(yl);
		cb.setRdate(rdate);
		cb.setCname(cname);
		cb.setCat(cat);
		cb.setDesc(des);
		cb.setPict(filename);
		ContentDao rd=new ContentDao();
		int status=rd.insert(cb);
		
		if(status!=0)
			
		{
			response.sendRedirect("home.jsp?con=Sucess");
		}
		else
		{
			response.sendRedirect("addcontent.jsp?con=failed");
		}
		
		
	}

}
