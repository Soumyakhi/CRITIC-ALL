package org.mis;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
static Connection con;
public static  Connection createC()
{
	String url="jdbc:mysql://localhost:3306/db";
	String uid="root";
	String upass="Root1234";
	try
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection(url,uid,upass);
}catch(Exception e) {
	e.printStackTrace();
}
	return con;
}
}
