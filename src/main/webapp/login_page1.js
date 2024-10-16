function login(){
    document.querySelector('.rest-container').innerHTML=`
    <form action="Login" method="post" name="LoginForm"  onsubmit="return validateForm1()">
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
    <div class="create-login-container" name="LoginForm" id="login-botton">
        <button class="create-login" type="submit">Login</button>
    </div>  
   </form>`
    clearText()

}
function createAccount(){
    document.querySelector('.rest-container').innerHTML=`
    <form action="avatar.jsp" method="post" name="RegForm" onsubmit="return validateForm()">
    <div class="input1container">
    <div class="ussericon">

    </div>
    <input type="text" class="inp" name="uname" placeholder="Enter Username" id="uu">
</div>
<div class="input3container">
    <div class="emailicon">

    </div>
    <input type="email" class="inp" name="uemail" placeholder="Enter Email" id="em">
</div>
<div class="input2container">
    <div class="passwordicon">

    </div>
    <input type="password" class="inp" name="upass" placeholder="Enter Password" id="pu">
</div>
<div class="input4container">
    <div class="passwordicon">

    </div>
    <input type="password" class="inp" name="uconf" placeholder="Confirm Password" id="cp">
</div>
<div class="create-login-container" type="submit" id="create-login-user">
    <button class="create-login">Create Account</button>
</div>
</form>`
    clearText()
}
function clearText(){
    document.getElementById('uu').value=''
    document.getElementById('au').value=''
    document.getElementById('pu').value=''
    document.getElementById('pa').value=''
    document.getElementById('em').value=''
    document.getElementById('cp').value=''
}
function validateForm(){
    var boo=true
    var name=document.forms['RegForm']['uname'].value
    var password=document.forms['RegForm']['upass'].value
    var cpassword=document.forms['RegForm']['uconf'].value
    var eml=document.forms['RegForm']['uemail'].value
    if(name==''){
        boo=false
        alert("Username Can not be blank")
    }
    else if(eml==''){
        boo=false
        alert("Email Can not be Blank")
    }
    else if(eml.search("@")==-1){
        boo=false
        alert("Email must contain @")
    }
    else if(password===''){
        boo=false
        alert("Password Can not be Blank")
    }
    else if(password.length<11){
        boo=false
        alert("Password must be more than 10 characters")
    }
    else if(cpassword=='' || cpassword!=password){
        boo=false
        alert("Password do not match")
    }
    
    
    
    return boo

}
function validateForm1(){
    var boo=true
    var name=document.forms["LoginForm"]['uname'].value
    var password=document.forms['LoginForm']['upass'].value
    if(name==''){
        boo=false
        alert("Username Can not be blank")
    }
    else if(password===''){
        boo=false
        alert("Password Can not be Blank")
    }
    else if(password.length<11){
        boo=false
        alert("Password must be more than 10 characters")
    }   
    return boo

}
