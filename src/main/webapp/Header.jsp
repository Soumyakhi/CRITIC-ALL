<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.mis.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="header.css">
	<link rel="shortcut icon" href="images/video-camera2.png" type="image/x-icon">
	<script type="text/javascript" src="header.js"></script>
</head>
<body>
	<%
	Connection con;
	PreparedStatement pstm;
	ResultSet rs;
	String name=(String)session.getAttribute("Name");
	String s="userad.png"; 
	try{
		
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("select avatar from user1 where name=?");
		pstm.setString(1,name);
		rs=pstm.executeQuery();
		while(rs.next()){
			s=rs.getString(1);
				
		}

	}
	catch(Exception e){}
	%>
    <nav class="head_container">
        <div class="logo_container">
            <div class="logo">
                <a href="home.jsp"><img src="images/video-camera2.png"></a>
            </div>
        </div>

        <div class="avatar_container">
            <div onclick="dropDown()" >
						<img src=<%out.println("images/"+s); %> class="avatar">
            </div>

        </div>
        <div class="nothing">
            
        </div>
        <div class="drop" id="dDown">
        	
        </div>
        
    </nav>
    

</body>
</html>