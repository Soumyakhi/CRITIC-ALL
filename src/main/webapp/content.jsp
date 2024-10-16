<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="org.mis.ConnectionProvider" %>
<jsp:include page="Header.jsp"/>
<jsp:include page="nav2.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="content.css">
    <script src="content.js"></script>
    <title>Your Name Movie Review</title>
</head>
<body onload="col()">                   
<%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
String name=(String)session.getAttribute("Name");
if(session.getAttribute("Name")==null){
	response.sendRedirect("Login_reg.jsp");
    }
try{

   if(request.getParameter("conname")==null)
 	{
	  response.sendRedirect("home.jsp");
   }}
catch(Exception e){}
  String cname= request.getParameter("conname");
  String xname=cname;
   	Connection con;
	PreparedStatement pstm,pstm2,pstm3,pstmr;
	ResultSet rs,rs1,rs2,rsr;
	int sum=1,total=1,res=1;
	float resf=1;
	String genre="",catagory="",description="",picture="",rdate="",ytlink="";
	try{
		
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("select * from content where Cname=?");
		pstm.setString(1,cname);
		rs=pstm.executeQuery();
		if(rs.next()==false){
			response.sendRedirect("home.jsp");
		}
		pstm=con.prepareStatement("select * from content where Cname=?");
		pstm.setString(1,cname);
		rs=pstm.executeQuery();
		while(rs.next()){
		cname=rs.getString(1);
		catagory=rs.getString(2);
		genre=rs.getString(3);
		description=rs.getString(4);
		picture=rs.getString(5);
	    rdate =rs.getString(6);
	    ytlink = rs.getString(7);
		}
		
		pstm2=con.prepareStatement("select count(score) from comments where cname=?");
		pstm2.setString(1,cname);
		rs1=pstm2.executeQuery();
		pstm3=con.prepareStatement("select sum(score) from comments where cname=?");
		pstm3.setString(1,cname);
		rs2=pstm3.executeQuery();
		while(rs1.next()){
			total=rs1.getInt(1);
		}
		while(rs2.next()){
			sum=rs2.getInt(1);
		}
		
		
		
		resf=((float)sum/(float)total);
		res=(int)Math.round(resf);
		
		
	}
   
	catch(Exception e){
		
	}
%>
<div class="content-container">
    <main>
        <section id="overview" class="movie-info">
           <div class="name"> <h2><%out.println(cname); %></h2>
            <div class="rating" id="final">
                <%out.println(res);%>
            </div>
        	</div>
            <div class="content"><img  src=<%out.println("images/content/"+picture);%> class="mainimg">
            <div class="ytlink"><iframe width="0" height="0" src=<%out.println(ytlink);%> title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
            </div>
            <div class="movdetails">
            <div style="display:none"><strong>Title:</strong> <div id="takename" style="display:inline-block"><%out.println(cname);%></div></div>
            <div class="inner-detail">
            	<span id="releasedate" class="detail"><%out.println(rdate);%></span>
            	<span id="genre" class="detail"><%out.println(genre);%></span>
            </div>
            <div class="detail" id="description">Description</div>
            <p><%out.println(description);%></p>
            </div>
            <%
            	boolean x=false;
            	String contname="";
            	
            try{
            	
        		con=ConnectionProvider.createC();
        		pstmr=con.prepareStatement("select * from comments where uname=? and cname=?");
        		pstmr.setString(1,name);
        		pstmr.setString(2,cname);
        		rsr=pstmr.executeQuery();
        		x=rsr.next();
        		contname=rsr.getString(2);
        		}
            catch(Exception e){
            	
            }
            
            try{
            	if(name.equals("SoumyajitAd")==false  && x==false ){%>
                <form action="Comment" method="post" >
                <span id="rate-label">Hey! Rate Me!!</span>
                <div class="slidecontainer">
                	<button class="slide-button red-btn" type="button" onmouseover="rate(this)" onmouseout="normal(this)" id="btn1" onclick="t1()"></button>
                    <button class="slide-button red-btn" type="button" onmouseover="rate(this)" onmouseout="normal(this)" id="btn2"onclick="t2()"></button>
                    <button class="slide-button red-btn" type="button" onmouseover="rate(this)" onmouseout="normal(this)" id="btn3" onclick="t3()"></button>
                    <button class="slide-button yellow-btn" type="button" onmouseover="rate(this)" onmouseout="normal(this)" id="btn4" onclick="t4()"></button>
                    <button class="slide-button yellow-btn" type="button" onmouseover="rate(this)" onmouseout="normal(this)" id="btn5" onclick="t5()"></button>
                    <button class="slide-button yellow-btn" type="button" onmouseover="rate(this)" onmouseout="normal(this)" id="btn6" onclick="t6()"></button>
                    <button class="slide-button yellow-btn" type="button" onmouseover="rate(this)" onmouseout="normal(this)" id="btn7" onclick="t7()"></button>
                    <button class="slide-button green-btn" type="button" onmouseover="rate(this)" onmouseout="normal(this)" id="btn8" onclick="t8()"></button>
                    <button class="slide-button green-btn" type="button" onmouseover="rate(this)" onmouseout="normal(this)" id="btn9" onclick="t9()"></button>
                    <button class="slide-button green-btn" type="button" onmouseover="rate(this)" onmouseout="normal(this)" id="btn10" onclick="t10()"></button>      
                	<div id="show-rate">5</div>
                </div>
                 <input  name="range" type="text" style="display:none;" id="rate-input" value="5">
                 <input style="display:none;" id="show" name="cname">
                 	<%
                 	try{
                 	con=ConnectionProvider.createC();
                 	pstm2=con.prepareStatement("select avatar from user1 where name=?;");
            		pstm2.setString(1,name);
            		rs2=pstm2.executeQuery();
            		while(rs2.next()){;%>
            		<div class="new-comment">
            		<div class="pfp_container" id="pfp">
                        <img src=<%out.println("images/"+rs2.getString(1)); %> style="margin-bottom:0" class="img1">
                        <div style="font-size:10px" id="uid" style="margin-top:0"><%out.println(name);%></div>
                    </div>
                 	<div class="form-group"><textarea name="comm" class="form add-comment"  placeholder="Add Your Comment"></textarea></div>
                 
                 <% }}catch(Exception e){
                	 
                 }%>
                    
                     <button class="btn post-btn" onclick="f3()" ><i class="fa-regular fa-paper-plane"></i></button>
                    </div>
                </form><%}}catch(Exception e){} %>
                <%
                PreparedStatement pstm4;
            	ResultSet rs3;
            	int i=1;
            	try{
            		
            		con=ConnectionProvider.createC();
            		pstm4=con.prepareStatement("select u.avatar,c.comment,c.score,c.uname from comments c , user1 u where c.cname=? and c.uname=u.name;");
            		pstm4.setString(1,cname);
            		rs3=pstm4.executeQuery();
            		while(rs3.next()){%>
            		<div class="comment">
                    <div class="pfp_container" id="pfp">
                        <img src=<%out.println("images/"+rs3.getString(1)); %> style="margin-bottom:0" class="img1">
                        <div style="font-size:10px" id="uid" style="margin-top:0"><%out.println(rs3.getString(4));%></div>
                    </div>
                <div class="dummy">
                    <p><%out.println(rs3.getString(2)); %></p>
                    <%cname=cname.replace(' ','+');
                      String s=rs3.getString(4).replace(" ", "+");
                      String sk=s.replace("+", " ");
                    %><% String s1=(String)session.getAttribute("Name");
                    if(s1.equals("SoumyajitAd") || s1.equals(sk)){%>
                    <a href=<%out.print("DelCom?uname="+s+"&cname="+cname);%>><button id="del-btn"><i class="fa-solid fa-trash-can"></i></button></a><% }%>
                </div>
                <div class="rating" id=<%out.println("review"+i);i++; %>>
                    <%out.println(rs3.getString(3)); %>
                </div>
            </div><br><%}}
            		
            		catch(Exception e){
            			
            		}
            		%>
        </section>
    </main>
	</div>
    <input type="text" value=<%out.println(total);%> id="comcount" style="visibility: hidden;">
    
</body>
	
</html>
<jsp:include page="footer.html"/>
