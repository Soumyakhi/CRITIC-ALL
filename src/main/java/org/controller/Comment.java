package org.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.Commentbean;
import org.model.dao.CommentDao;

/**
 * Servlet implementation class Comment
 */
@WebServlet("/Comment")
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Comment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String comment=request.getParameter("comm");
		String cname=request.getParameter("cname");
		String scores=request.getParameter("range");
		int score=Integer.parseInt(scores);
		HttpSession session =request.getSession();
		String name=(String) session.getAttribute("Name");
		Commentbean cbean=new Commentbean();
		cbean.setName(name);
		cbean.setScore(score);
		cbean.setCname(cname);
		cbean.setComment(comment);
		//ubean.setAnswer(answer);
		CommentDao cd=new CommentDao();
		int status=cd.postComment(cbean);
		if(status!=0)
		{	response.sendRedirect("content.jsp?conname="+cname);
		}
		else
		{
			response.sendRedirect("content.jsp?conname="+cname);
		}
		
	}

}
