<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="nav2.css">
<link rel="shortcut icon" href="images/video-camera2.png" type="image/x-icon">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Critic~All</title>
</head>
<body>
	<%String name=(String)session.getAttribute("Name");
	try{if(name.equals("SoumyajitAd")){%>
	<nav class="nav-container">
        <div class="items-container">
                <a href="asearch.jsp" id="anc"><div class="nav-list">Anime</div ></a>
                <a href="msearch.jsp" id="anc"><div class="nav-list">Movies</div></a>
                <a href="addcontent.jsp" id="anc"><div class="nav-list" id="plus">+</div ></a>
                <a href="AdminDelete.jsp"><div class="nav-list"><i class="fa-regular fa-eye"></i></div ></a>
                <a href="gsearch.jsp" id="anc"><div class="nav-list">Games</div ></a>
                <a href="ssearch.jsp" id="anc"><div class="nav-list">Shows</div ></a>
                
        </div>
    </nav><%} 
	else{%>
	
    <nav class="nav-container">
        <div class="items-container">
            <a href="home.jsp" id="anc"><div class="nav-list">Home</div ></a>
            <a href="asearch.jsp" id="anc"><div class="nav-list">Anime</div ></a>
            <a href="msearch.jsp" id="anc"><div class="nav-list">Movies</div></a>
            <a href="gsearch.jsp" id="anc"><div class="nav-list">Games</div ></a>
            <a href="ssearch.jsp" id="anc"><div class="nav-list">Shows</div ></a>
        </div>
    </nav><%}}catch(Exception e){}%>
</body>
</html>