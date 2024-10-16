document.addEventListener("keydown",(e)=>{
    if(e.key=="Escape"){
        drop()
    }
})
function dropDown(){
if(document.getElementById("dDown").innerHTML==`<form action="Logout" method="post"><button class="Logout" type="submit">
logout
</button></form>`){
    document.getElementById("dDown").innerHTML='';
    
}
else{
    document.getElementById("dDown").innerHTML=`<form action="Logout" method="post"><button class="Logout" type="submit">
logout
</button></form>`;
}
}
function drop(){
    document.getElementById("dDown").innerHTML='';
   
}






