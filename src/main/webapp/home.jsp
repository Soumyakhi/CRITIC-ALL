<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp"/>
<jsp:include page="nav2.jsp"/>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="shortcut icon" href="images/video-camera2.png" type="image/x-icon">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Critic~All | home</title>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer">

    <link rel="stylesheet" href="home-style.css">
    <link rel="stylesheet" href="header.css">    
    <link rel="stylesheet" href="nav2.css"> 


</head>
<body>
<%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
String name=(String)session.getAttribute("Name");
if(session.getAttribute("Name")==null){
    	response.sendRedirect("Login_reg.jsp");
    }; %>
<%String msg=request.getParameter("con"); 
                   if("Sucess".equals(msg))
                		   {%>
                		   <Script>alert("Upload Sucessfull!")</script>
                	   
                		   <%} %>
          
                	
    	
    

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <div id="carouselExampleIndicators" class="carousel slide shadow-lg" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/pic1.jpg" class="d-block w-100 height-img" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/pic2.jpg" class="d-block w-100 height-img" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/pic3.jpg" class="d-block w-100 height-img" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/pic4.jpg" class="d-block w-100 height-img" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/pic5 (2).jpg" class="d-block w-100 height-img" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/pic6.jpg" class="d-block w-100 height-img" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/pic7.jpg" class="d-block w-100 height-img" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/pic8.jpg" class="d-block w-100 height-img" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </button>
    </div>




    <!-- <div class="container">  -->
        <div class="box" id="box1">
            <a href="asearch.jsp"><img src="images/anime.jpeg"></a>
            <div class="static-content">
                <span id="static-content1" class="typewritter">Anime</span>
            </div>
        </div>
        <div class="box" id="box2">
            <a href="msearch.jsp"><img src="images/movie-2.jfif"></a>
            <div class="static-content">
                <span id="static-content2" class="typewritter1">Movie</span> 
            </div>
        </div>
        <div class="box" id="box3">
            <a href="gsearch.jsp"><img src="images/game.jpeg"></a>
            <div class="static-content">
                <span id="static-content3" class="typewritter2">Games</span> 
            </div>
        </div>
        <div class="box" id="box4">
            <a href="ssearch.jsp"><img src="images/series.jpeg"></a>
            <div class="static-content">
                <span id="static-content4" class="typewritter3">Series</span> 
            </div>
        </div>

    <script src="https://unpkg.com/typed.js@2.0.16/dist/typed.umd.js"></script>

    <script>
        var typed=new Typed(".typewritter",{
        strings:[ "Anime"],
        typeSpeed: 200, 
        backSpeed: 200 ,
        loop:true})

        var typed1=new Typed(".typewritter1",{
        strings:[ "Movies"],
        typeSpeed: 200, 
        backSpeed: 200 ,
        loop:true})

        var typed2=new Typed(".typewritter2",{
        strings:[ "Games"],
        typeSpeed: 200, 
        backSpeed: 200 ,
        loop:true})

        var typed3=new Typed(".typewritter3",{
        strings:[ "Series"],
        typeSpeed: 200, 
        backSpeed: 200 ,
        loop:true})

    </script>
    <jsp:include page="footer.html"/>

</body>
</html>