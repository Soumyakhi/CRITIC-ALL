package org.model.dao;
import java.sql.*;

import org.mis.ConnectionProvider;
import org.model.bean.Commentbean;

public class CommentDao {
	public int postComment(Commentbean bean )
	{
		String name=bean.getName();
		String cname=bean.getCname();
		String comment=bean.getComment();
		int score=bean.getScore();
		Connection con;
		PreparedStatement pstm;
		int i = 0;
		try
		{
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("insert into comments  values(?,?,?,?)");
		pstm.setString(1,name);
		pstm.setString(2,cname);
		pstm.setString(3,comment);
		pstm.setInt(4,score);
		i=pstm.executeUpdate();
		}catch(Exception e) {}
		return  i;
	}
}
