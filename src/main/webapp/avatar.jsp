<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Critic~All | avatar</title>
    <link rel="stylesheet" href="avatar-style.css">
    <style>
       .hidden{
            visibility: hidden;
        }
    </style>
</head>
<body>
<% if(request.getParameter("uname")==null  || request.getParameter("uemail")==null || request.getParameter("upass")==null){
	
	response.sendRedirect("home.jsp");
	return;
}
        String name=request.getParameter("uname");
		String email=request.getParameter("uemail");
		String pass=request.getParameter("upass");
        %>
        

    <div class="outer-container">
    <form action="Register" class="container" method="post">
        <div id="unique">
            <input type="text" name="avatar" id="input0" class="hidden">
            <%name=name.replace(' ','+');
              email=email.replace(' ','+');
              pass=pass.replace(' ','+');
            %>
            <input type="text" name="uname" id="input1" value=<%out.println(name); %> class="hidden">
            <input type="text" name="uemail" id="input2" value=<%out.println(email); %> class="hidden">
            <input type="text" name="upass" id="input3" value=<%out.println(pass); %> class="hidden">
        </div>
        
        <span id="avatar-para">Choose Your Avatar...</span>
        <div class="box" id="box1">
            <button class="btn-avatar" id="btn1" type="submit" onclick="getUrl(1)"><img src="images/avatar1.png"></button>
            <button class="btn-avatar" id="btn2" type="submit" onclick="getUrl(2)"><img src="images/avatar2.png"></button>
            <button class="btn-avatar" id="btn3" type="submit" onclick="getUrl(3)"><img src="images/avatar3.png"></button>           
        </div>
        <div class="box" id="box2">
            <button class="btn-avatar" id="btn4" type="submit" onclick="getUrl(4)"><img src="images/avatar4.png"></button>
            <button class="btn-avatar" id="btn5" type="submit" onclick="getUrl(5)"><img src="images/avatar5.png"></button>
            <button class="btn-avatar" id="btn6" type="submit" onclick="getUrl(6)"><img src="images/avatar6.png"></button>
        </div>
        <div class="box" id="box3">
            <button class="btn-avatar" id="btn7" type="submit" onclick="getUrl(7)"><img src="images/avatar7.png"></button>
            <button class="btn-avatar" id="btn8" type="submit" onclick="getUrl(8)"><img src="images/avatar8.png"></button>
            <button class="btn-avatar" id="btn9" type="submit" onclick="getUrl(9)"><img src="images/avatar9.png"></button>
        </div>
        <div class="box" id="box3">
            <button class="btn-avatar" id="btn10" type="submit" onclick="getUrl(10)"><img src="images/avatar10.png"></button>
            <button class="btn-avatar" id="btn11" type="submit" onclick="getUrl(11)"><img src="images/avatar11.png"></button>
            <button class="btn-avatar" id="btn12" type="submit" onclick="getUrl(12)"><img src="images/avatar12.png"></button>
        </div>
    </form>
</div>

<script type="text/javascript">
    function getUrl(a)
    {
        switch(a)
        {
            case 1:
                {
                    document.getElementById("input0").value = `avatar1.png`
                    break;
                }
            case 2:
                {
                    document.getElementById("input0").value = `avatar2.png`
                    break;
                }
            case 3:
                {
                    document.getElementById("input0").value = `avatar3.png`
                    break;
                }
            case 4:
                {
                    document.getElementById("input0").value = `avatar4.png`
                    break;
                }
            case 5:
                {
                    document.getElementById("input0").value = `avatar5.png`
                    break;
                }
            case 6:
                {
                    document.getElementById("input0").value = `avatar6.png`
                    break;
                }
            case 7:
                {
                    document.getElementById("input0").value = `avatar7.png`
                    break;
                }
            case 8:
                {
                    document.getElementById("input0").value = `avatar8.png`
                    break;
                }
            case 9:
                {
                    document.getElementById("input0").value = `avatar9.png`
                    break;
                }
            case 10:
                {
                    document.getElementById("input0").value = `avatar10.png`
                    break;
                }
            case 11:
                {
                    document.getElementById("input0").value = `avatar11.png`
                    break;
                }
            case 12:
                {
                    document.getElementById("input0").value = `avatar12.png`
                    break;
                }
        }
        	
        
    }
</script>
</body>
</html>