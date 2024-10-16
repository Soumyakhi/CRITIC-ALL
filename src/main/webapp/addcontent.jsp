<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
	<script>
		
        function validateForm(){
            var boo=true
            var cname=document.forms['contentform']['cname'].value
            var genre=document.forms['contentform']['genre'].value
            var cat=document.forms['contentform']['category'].value
            var desc=document.forms['contentform']['Description'].value
            var selected = document.getElementById("file").files.length > 0;
            
            if(selected==false){
                boo=false
                alert("picture must be uploaded")      
            }
            else if(cname==''){
                boo=false
                alert("any field can not be blank")
            }
            else if(genre==''){
                boo=false
                alert("any field can not be blank")
            }
            else if(cat==''){
                boo=false
                alert("any field can not be blank")
            }
            else if(desc==''){
                boo=false
                alert("any field can not be blank")
            }
            return boo

        }
        
        setInterval(function change(){
        	if(document.getElementById("file").files.length > 0){
                document.getElementById("Filecolor").style.backgroundColor = "green";
                document.getElementById("PIC-SPAN").style.color = "white";
                document.getElementById("PIC-SPAN").innerHTML = "UPDATE PICTURE";
                
                
              }
        },1);
    </script>
	
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/video-camera2.png" type="image/x-icon">
    <title>Add Content</title>
    <link rel="stylesheet" href="final.css">
<title>Insert title here</title>
</head>
<body>
	<%
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	response.setHeader("Pragma","no-cache");
	try{
		String name=(String)session.getAttribute("Name");
		if(name.equals("SoumyajitAd")==false)
			response.sendRedirect("home.jsp");
		
		}
	
	catch(Exception  e){
		response.sendRedirect("home.jsp");
	}
	%>
	<%String msg=request.getParameter("con"); 
                   if("failed".equals(msg))
                		   {%>
                		   <Script>alert("Upload Failed!")</script>
                	   
                		   <%} %>
	 <div class="background">
     <div class="shape"></div>
     <div class="shape"></div>

    </div>
    <form action="Content" name="contentform" onsubmit="return validateForm()" enctype="multipart/form-data" method="post">
        <h3> ADD CONTENT </h3>

        <label for="name"> CONTENT NAME </label>
        <input type="text" name="cname" class="a">
        <label for="name"> RELEASE DATE </label>
        <input type="text" name="rd" class="a">
        <label for="name"> YOUTUBE LINK </label>
        <input type="text" name="yl" class="a">
        <label for="genre"> GENRE</label>
        <input type="text" name="genre" class="a">
        <label for="category">CHOOSE A CATEGORY:</label> <br>
        

        <select name="category" id="category" categories > 
            <div class="dropdown-content">
                <option value="movie"style="color:black">MOVIE</option>
                <option value="series" style="color:black">SERIES</option>
                <option value="anime" style="color:black">ANIME</option>
                <option value="game" style="color:black" >GAME</option>
            </div>
        </select>
        
        <label for="description"> DESCRIPTION</label>
        <textarea id="w3review" name="Description" rows="4" cols="50"></textarea>
        <label class="custom-file-upload" id="Filecolor">
        <div id="PIC-SPAN" style="padding: 6px 12px; font-weight:Bold;">INSERT PICTURE</div>
            <input type="file" name="pic"  id="file">
        </label>
        
        
        <button> SUBMIT</button>
    </form>
</body>
</html>