package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mis.ConnectionProvider;
import org.model.bean.Deletebean;

public class DeleteAdminDao {
public  void fun(Deletebean dbean){
		
		String cname=dbean.getCname();
		Connection con,con1;
		PreparedStatement pstm,pstm1;  
		ResultSet rs = null,rs1=null;

		try
		{

		con=ConnectionProvider.createC();
		con1=ConnectionProvider.createC();
		pstm=con.prepareStatement("delete from comments where cname=?");
		pstm.setString(1,cname);

		pstm.executeUpdate();
		pstm1=con1.prepareStatement("delete from content where Cname=?");
		pstm1.setString(1,cname);
		pstm1.executeUpdate();
		}
		catch(Exception e) {System.out.print("error  ");}

}
}
