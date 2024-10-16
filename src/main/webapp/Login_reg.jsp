<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="shortcut icon" href="images/video-camera2.png" type="image/x-icon">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <link rel="stylesheet" href="login_page1.css">
    <script type="text/javascript"  src="login_page1.js"></script>
    <title>Login</title>
</head>
<body>

    <div class="background">
        <div class="logo_container">
            <div class="logo">
    
            </div>
        </div>

        <div class="both_container">
            <div class="info">
                <div class="admininfo">
                    Login as Administrator to update the  Catalog.    
                </div>
            </div>
            <div class="typelogin">
                <h1>ADMIN</h1>
            </div>
    
            <div class="company_container">
                
                <div class="flexcontainer">
                    
                        <div class="loginbox" id="adminlogin">
                            <form action="AdminLogin" method="post">
                                <div class="login">
                                    <button class="logsinadmin" id="login_admin" type="button">
                                        Login
                                    </button>
                                </div>
                                <div class="input1container"id="adminmargin">
                                    <div class="ussericon" >
                        
                                    </div>
                                    <input type="text"  class="inp" placeholder="Enter Username" id="au" name="Aname" required>
                                </div>
                                <div class="input2container">
                                    <div class="passwordicon">
                        
                                    </div>
                                    <input type="password" class="inp"  placeholder="Enter Password" id="pa" name="Apass" required>
                                </div>    
                                    
                                <div class="create-login-container" id="login-botton">
                                    <button class="create-login" type="submit">Login</button>
                                </div>
                                
                            
                            </form>
                          </div>  
                    
                    
                    
                </div>
            </div>
            <div class="info">
                <div class="userinfo">
                    Ready to dive deep into CRITIC~All?<br>Login or Register to Begin.
                </div>
            </div>
            <div class="typelogin">
                <h1>USER</h1>   
            </div>
            <div class="user_container">
                
            <div class="flexcontainer">
                
                    <div class="loginbox">
                        
                            <div class="signlog_container">
                            
    
                                <div class="signup" >
                                    <button class="logsin" id="sin" type="button" onclick="createAccount()">
                                        Signup
                                    </button>
                                </div>
                                
                            
                            
                                <div class="login" >
                                    <button class="logsin" id="log" type="button" onclick="login()">
                                        Login
                                    </button>
                                </div>
                            
                            
                        </div>
                        
                        <div class="rest-container">
							<form action="Login" method="post" name="LoginForm" onsubmit="return validateForm1()">
                                <div class="input1container">
                                    <div class="ussericon">
                                
                                    </div>
                                    <input type="text" class="inp" name="uname" placeholder="Enter Username" id="uu">
                                </div>
                                <div class="input2container">
                                    <div class="passwordicon">
                                
                                    </div>
                                    <input type="password" class="inp" name="upass" placeholder="Enter Password" id="pu">
                                </div>
                                <div class="create-login-container" id="login-botton">
                                    <button class="create-login" type="submit">Login</button>
                                </div>  
                               </form>
                        </div>
                         
                        
                           
                    </div>
                    
                </div>
            </div>
            
        </div>
    </div>
	<%String msg=request.getParameter("msg"); 
                   if("invalid".equals(msg))
                		   {%>
                		   <Script>alert("Username And Password Do Not Match!")</script>
                	   
                		   <%} %>
                	<%if("invalidr".equals(msg))
         		   {%>
         		   <Script>alert("Username or Email is already in use!")</script>
         	   
         		   <%} %>
                	
                		  
	
</body>
</html>