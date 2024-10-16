package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mis.ConnectionProvider;
import org.model.bean.Contentbean;
import org.model.bean.UserBean;

public class ContentDao {
public int insert(Contentbean bean)
{
	String cname=bean.getCname();
	String cat=bean.getCat();
	String genre=bean.getGenre();
	String catagory=bean.getCat();
	String desc=bean.getDesc();
	String pict=bean.getPict();
	String rdate=bean.getRdate();
	String yl=bean.getYl();
	Connection con;
	PreparedStatement pstm;
	int i=0;
	try
	{
	
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("insert into content values(?,?,?,?,?,?,?)");
	pstm.setString(1, cname);
	pstm.setString(2, cat);
	pstm.setString(3, genre);
	pstm.setString(4, desc);
	pstm.setString(5, pict);
	pstm.setString(6, rdate);
	pstm.setString(7, yl);
	i=pstm.executeUpdate();
	
}catch(Exception e) {}
	return i;
}
}