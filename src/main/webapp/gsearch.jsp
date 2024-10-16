<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.mis.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<jsp:include page="Header.jsp"/>
<jsp:include page="nav2.jsp"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <style>
        @font-face {
            font-family: 'MyFont';
            src: url('Poppins-Medium.otf') format('opentype');
            font-weight: normal;
            font-style: normal;
        }
        *{
            margin: 0;
            padding: 0;
            font-family:'Myfont';
        }
        body{
           background-image: linear-gradient(to right, #383b44 ,#373a43,#2c2f36); 
           
        }
        .search-container{
            height: 300px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #searchq{
            width: 500px;
            outline: none;
            border: none;
            background-color: transparent;
            height: fit-content;
            height: 100%;
            margin-bottom: 10px;
        }
        #srpng{
            background-image: url(images/search.png);
            background-size: cover;
            padding: 0;
            height: 20px;
            width: 27px;
            background-repeat: no-repeat;
            margin-right: 5px;
            display: inline-block;
            border:none;
            background-color: transparent;
            height: fit-content;
            cursor: pointer;
        }
        #srp{
            height: 100%;
            display: inline-block;
            border:none;
            visibility: hidden;
            width: 20px;
            background-color: transparent;

        }
        .searchbar{
            padding-left: 7px;
            border-radius: 30px;
            padding-right: 10px;
            padding-top: 8px;
            padding-bottom: 5px;
            background-image: linear-gradient(to right, #e6e6e6 ,#f0f0f0,#e6e6e6);
            box-shadow: rgba(0, 0, 0, 0.95) 0px 8px 15px;
        }
        h2{
            color: #e6e6e6;
        }
        .results-container{
            display: flex;
            align-items: center;
            flex-direction: column;
            margin-top: 30px;
            height: fit-content;
            margin-bottom: 10px;
            
            
        }
        a{
            color: inherit;
            text-decoration: none;
        }
        .result{
            display: flex;
            align-items: center;
            background-color: rgb(34, 139, 171);
            width:850px;
            border-radius: 30px;
            transition: .3s all ease-in-out;
            box-shadow: rgba(0, 0, 0, 0.95) 0px 8px 15px;
        }
        .result:hover{
            background-color: rgb(200, 9, 200);
            opacity: .8;
        }
        .image-container{
            display: flex;
            align-items: center;
        }
        #resimg{
            height: 220px;
            width: 180px;
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
        }
        #resname{
            display: inline-block;
            margin-left: 190px;
        }
        .allres{
            width: fit-content;
        }
        .res{
            font-size: 35px;
            cursor: default;
        }
        @media(max-width:900px){
        .search-container{
            height: 300px;
        }
        #searchq{
            width: 300px;
        }
        #srpng{
            width: 25px;
            height: fit-content;
        }
        .searchbar{
            padding-left: 5px;
            padding-right: 7px;
        }
        .results-container{

            margin-top: 30px;
            margin-bottom: 10px; 
        }
        .result{
            width:600px;
        }
        #resname{

            margin-left: 100px;
        }
        }
        @media(max-width:610px){
        .result{
            width:350px;
        }
        #resname{
            font-size: smaller;
            margin-left: 50px;
        }
        }
        @media(max-width:440px){
        .result{
            width:300px;
        }
        #resname{
            font-size: smaller;
            margin-left: 20px;
        }
        }
        


    </style>
</head>
<body>
	<div style="min-height: 80vh;">
	<%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	response.setHeader("Pragma","no-cache");
	String name=(String)session.getAttribute("Name");
	if(session.getAttribute("Name")==null){
	response.sendRedirect("Login_reg.jsp");
    }%>
    
    <div class="search-container">
        <div class="searchbar">
            <form action="gsearch.jsp">
                <button id="srpng">
                    <img src="images/search.png" id="srp">
                </button>
                <input type="text" id="searchq" <%if(request.getParameter("q")!=null){out.println("value='"+request.getParameter("q")+"'");} %> name='q'>
                
            </form>
        </div>
    </div>
    
    <div class="results-container">
        <div class="allres">
        <%
    String cname="",cname1="";
    
    if(request.getParameter("q")!=null && request.getParameter("q").equals("")==false){
    	cname=request.getParameter("q");
    
    	Connection con;
    	PreparedStatement pstm;
    	ResultSet rs;
    	int i=0;
		String picture="";
	
		
			
	try{
		
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("select Cname,picture from content where Cname  like ? and catagories ='game';");
		if(cname.length()>3){
		pstm.setString(1,"%"+cname+"%");}
		else{
			pstm.setString(1,cname+"%");
		}
		rs=pstm.executeQuery();
		if(rs.next()==false){
			out.println("<h2 class='res'>no Results</h2>");
		}
		pstm=con.prepareStatement("select Cname,picture from content where Cname  like ? and catagories ='game';");
		if(cname.length()>3){
			pstm.setString(1,"%"+cname+"%");}
		else{
			pstm.setString(1,cname+"%");
		}
		rs=pstm.executeQuery();
		while(rs.next()){
		cname=rs.getString(1);
		cname1=cname.replace(' ','+');
		picture=rs.getString(2);%>
        <% if(i<1){%>
            <h2 class="res">Results</h2><% 
            i++;}%>
            <br>
            <a href=<%out.println("content.jsp?conname="+cname1); %>>
                <div class="result">
                    <div class="image-container">
                        <img src=<%out.println("images/content/"+picture); %>id="resimg">
                    </div>
                    <h2 id="resname"><%out.println(cname);%></h2>
                </div>
            </a>
            <%}}catch(Exception e){System.out.print(e);}} %>
            <br>
        </div>
    </div>
    <%Connection con1;
	  PreparedStatement pstm1;
	  ResultSet rs1;
	  String picture1,conname1,conname10;
	  int j=0;
	  try{
   	  con1=ConnectionProvider.createC(); 
      pstm1=con1.prepareStatement("select comments.cname,content.picture from comments,content where comments.cname=content.Cname and content.catagories='game' group by cname order by count(comments.cname) desc LIMIT 3 OFFSET 0 ;");
      rs1=pstm1.executeQuery();
      while(rs1.next()){
    	 picture1=rs1.getString(2);
    	 conname1=rs1.getString(1);
    	 conname10=conname1.replace(' ','+');
      %>
    <div class="results-container">
        <div class="allres">
        <% if(j<1){ %>
            <h2 class="res">Top Games</h2><%j++;} %>
            <br>
            <a href=<%out.println("content.jsp?conname="+conname10); %>>
                <div class="result">
                    <div class="image-container">
                        <img src=<%out.println("images/content/"+picture1); %> id="resimg">
                    </div>
                    <h2 id="resname"><%out.println(conname1);%></h2>
                </div>
            </a>
            <br>
        </div>
    </div>
    <%}}catch(Exception e){} %>
    </div>	
</body>
</html>
<jsp:include page="footer.html"/>

