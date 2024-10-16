package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mis.ConnectionProvider;
import org.model.bean.UserBean;

public class LoginDao {
public boolean login(UserBean bean )
{
	String name=bean.getName();
	String pass=bean.getPass();
	Connection con;
	PreparedStatement pstm;
	ResultSet rs;
	boolean status=false;
	try
	{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("select *from user1 where binary name=? and binary password=?");
	pstm.setString(1,name);
	pstm.setString(2,pass);
	rs=pstm.executeQuery();
	status=rs.next();
	
	}catch(Exception e) {}
	return status;
}
}
