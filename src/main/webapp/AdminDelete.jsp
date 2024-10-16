<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.mis.*" %>
<jsp:include page="Header.jsp"/> 
<jsp:include page="nav2.jsp"/>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <title>Delete Admin</title>

    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family:system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        } 
        
        body{
        	height:100vh;
        	background-image: linear-gradient(to bottom,#170b4b,#3d2c8d,#916BBF);
        	background-repeat:no-repeat;
        	background-color:#916BBF;
        }

        .delete-container{
            display: flex;
            align-items: center;
            justify-content: center;
            
        }
        .form{
            width: 40%;
            background-color: bisque;
            margin-top: 15px;
            margin-bottom: 15px;
            padding: 15px;
            box-shadow: 10px 10px 8px rgb(24, 24, 73);
        }
        .catagory{
            border-bottom: 1px solid gray;
            margin-top: 10px;
            margin-bottom: 10px;
            font-weight: bold;
            color: rgb(109, 27, 27);
        }
        .delete-item{
            width: 100%;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
            background-color: rgb(236, 235, 235);
            word-break: break-all;
            border: 1px solid gray;
        }
        .delete-btn{
            width: fit-content;
            height: fit-content;
            margin-left: 5px;
            position: relative;
            float: right;
            background-color: transparent;
            border: none;
        }
        .delete-btn i{
            font-size: 15px;
            color: rgb(75, 73, 73);    
        }

        .delete-btn i:hover{
            color: black;
        }

        @media only screen and (max-width: 900px) and (min-width: 500px) {
            .form{
                width: 40%;
            }
        } 

        @media only screen and (max-width: 500px) and (min-width: 300px) {
            .form{
                width: 80%;
            }
        } 

    </style>
</head>
<body>

    <div class="delete-container">
        <div class="form">
        	  <div class="catagory">ANIME</div>

	 
<%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
String name=(String)session.getAttribute("Name");
if(session.getAttribute("Name")==null){
    	response.sendRedirect("Login_reg.jsp");
    	return;
    }; 

	try{
		String name1=(String)session.getAttribute("Name");
		if(name1.equals("SoumyajitAd")==false)
			response.sendRedirect("home.jsp");
		
		}
	
	catch(Exception  e){
		response.sendRedirect("Login_reg.jsp.jsp");
	}
       

   
   Connection con1;
	PreparedStatement pstm1;
	ResultSet rs1;
	String cname1,contentName ,pic,pic1;

    
  
		try{
			
			con1=ConnectionProvider.createC();
			pstm1=con1.prepareStatement("select Cname from content where catagories='anime'");
			rs1=pstm1.executeQuery();
			while(rs1.next()){
			cname1=rs1.getString(1);
			contentName=cname1.replace(" ", "+");%>

           <!--  <form action="DeleteAdminNew" method="get"> -->
             
            
 <div class="delete-item"><%out.println(cname1); %><a href=<%out.print("DeleteAdminNew?cname="+contentName);%>><button type="submit" class="delete-btn"><i class="fa-solid fa-trash-can"></i></button></a>
				
		       
                            </div>
		
        
        
     
<% }
		}
		   
		catch(Exception e){}
%>

 <div class="catagory">MOVIE</div>

<%  
    
	try{
		
		con1=ConnectionProvider.createC();
		pstm1=con1.prepareStatement("select Cname from content where catagories='movie'");
		rs1=pstm1.executeQuery();
		while(rs1.next()){
		cname1=rs1.getString(1);
		contentName=cname1.replace(" ", "+");%>

       <!--  <form action="DeleteAdminNew" method="get"> -->
         
        
<div class="delete-item"><%out.println(cname1); %><a href=<%out.print("DeleteAdminNew?cname="+contentName);%>><button type="submit" class="delete-btn"><i class="fa-solid fa-trash-can"></i></button></a>
			
	       
                        </div>
           
        
<% 		}
		}
		   
		catch(Exception e){}
%>

 <div class="catagory">GAME</div>
 

<% 
    
  
	try{
		
		con1=ConnectionProvider.createC();
		pstm1=con1.prepareStatement("select Cname from content where catagories='game'");
		rs1=pstm1.executeQuery();
		while(rs1.next()){
		cname1=rs1.getString(1);
		contentName=cname1.replace(" ", "+");%>

       <!--  <form action="DeleteAdminNew" method="get"> -->
         
        
<div class="delete-item"><%out.println(cname1); %><a href=<%out.print("DeleteAdminNew?cname="+contentName);%>><button type="submit" class="delete-btn"><i class="fa-solid fa-trash-can"></i></button></a>
			
	       
                        </div>
      
        
<% 		}
		}
		   
		catch(Exception e){}
%>


 <div class="catagory">SERIES</div>

<% 
    
  
	try{
		
		con1=ConnectionProvider.createC();
		pstm1=con1.prepareStatement("select Cname from content where catagories='series'");
		rs1=pstm1.executeQuery();
		while(rs1.next()){
		cname1=rs1.getString(1);
		contentName=cname1.replace(" ", "+");%>
         
        
<div class="delete-item"><%out.println(cname1); %><a href=<%out.print("DeleteAdminNew?cname="+contentName);%>><button type="submit" class="delete-btn"><i class="fa-solid fa-trash-can"></i></button></a>
			
	       
                        </div>
            
        
<% 		}
		}
		   
		catch(Exception e){}
%>

        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>