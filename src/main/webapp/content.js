function col(){

    var a=parseInt(document.getElementById("final").innerHTML);
    
    if(a<4)
    {
        document.getElementById("final").style.borderColor="rgb(247, 125, 125)";
        document.getElementById("final").style.backgroundColor="red";
    }
    else if(a<8)
    {
        document.getElementById("final").style.borderColor="rgb(228, 214, 88)";
        document.getElementById("final").style.backgroundColor="yellow";
    }
    else
    {
        document.getElementById("final").style.borderColor="rgb(135, 196, 78);";
        document.getElementById("final").style.backgroundColor="green";
    }
    var lend=parseInt(document.getElementById("comcount").value);
    var i=1;
    var idf="review"
    while(i<=lend){
        var ids=idf;
        var ids=ids+i.toString();
        var a=parseInt(document.getElementById(ids).innerHTML);
        if(a<4)
    {
        
        document.getElementById(ids).style.borderColor="red";
    }
    else if(a<8)
    {   
        document.getElementById(ids).style.borderColor="yellow";
    }
    else
    {
        
        document.getElementById(ids).style.borderColor="green";
    }
    i++;

    }
    
}


function f3(){
    document.getElementById('show').value=document.getElementById('takename').innerHTML
}


function rate(a){
    
    var id=a.id;

    var btn1=document.getElementById("btn1");
    
    var btn2=document.getElementById("btn2");
    
    var btn3=document.getElementById("btn3");
    
    var btn4=document.getElementById("btn4");
    
    var btn5=document.getElementById("btn5");
    
    var btn6=document.getElementById("btn6");
    
    var btn7=document.getElementById("btn7");
    
    var btn8=document.getElementById("btn8");
    
    var btn9=document.getElementById("btn9");
    
    var btn10=document.getElementById("btn10");



    if(id=="btn1")
    {
        btn1.style.backgroundColor='red';
    }
    else if(id=="btn2")
    {
        btn1.style.backgroundColor='red';
        btn2.style.backgroundColor='red';
    }
    else if(id=="btn3")
    {
        btn1.style.backgroundColor='red';
        btn2.style.backgroundColor='red';
        btn3.style.backgroundColor='red';
    } 
    else if(id=="btn4")
    {
        btn1.style.backgroundColor='yellow';
        btn2.style.backgroundColor='yellow';
        btn3.style.backgroundColor='yellow';
        btn4.style.backgroundColor='yellow';
    } 
    else if(id=="btn5")
    {
        btn1.style.backgroundColor='yellow';
        btn2.style.backgroundColor='yellow';
        btn3.style.backgroundColor='yellow';
        btn4.style.backgroundColor='yellow';
        btn5.style.backgroundColor='yellow';
    } 
    else if(id=="btn6")
    {
        btn1.style.backgroundColor='yellow';
        btn2.style.backgroundColor='yellow';
        btn3.style.backgroundColor='yellow';
        btn4.style.backgroundColor='yellow';
        btn5.style.backgroundColor='yellow';
        btn6.style.backgroundColor='yellow';
    }
    else if(id=="btn7")
    {
        btn1.style.backgroundColor='yellow';
        btn2.style.backgroundColor='yellow';
        btn3.style.backgroundColor='yellow';
        btn4.style.backgroundColor='yellow';
        btn5.style.backgroundColor='yellow';
        btn6.style.backgroundColor='yellow';
        btn7.style.backgroundColor='yellow';
    } 
    else if(id=="btn8")
    {
        btn1.style.backgroundColor='green';
        btn2.style.backgroundColor='green';
        btn3.style.backgroundColor='green';
        btn4.style.backgroundColor='green';
        btn5.style.backgroundColor='green';
        btn6.style.backgroundColor='green';
        btn7.style.backgroundColor='green';
        btn8.style.backgroundColor='green';
    } 
    else if(id=="btn9")
    {
        btn1.style.backgroundColor='green';
        btn2.style.backgroundColor='green';
        btn3.style.backgroundColor='green';
        btn4.style.backgroundColor='green';
        btn5.style.backgroundColor='green';
        btn6.style.backgroundColor='green';
        btn7.style.backgroundColor='green';
        btn8.style.backgroundColor='green';
        btn9.style.backgroundColor='green';
    }
    else
    {
        btn1.style.backgroundColor='green';
        btn2.style.backgroundColor='green';
        btn3.style.backgroundColor='green';
        btn4.style.backgroundColor='green';
        btn5.style.backgroundColor='green';
        btn6.style.backgroundColor='green';
        btn7.style.backgroundColor='green';
        btn8.style.backgroundColor='green';
        btn9.style.backgroundColor='green';
        btn10.style.backgroundColor='green';
    }

}


function normal(x)
{
    var btn1=document.getElementById("btn1");
    
    var btn2=document.getElementById("btn2");
    
    var btn3=document.getElementById("btn3");
    
    var btn4=document.getElementById("btn4");
    
    var btn5=document.getElementById("btn5");
    
    var btn6=document.getElementById("btn6");
    
    var btn7=document.getElementById("btn7");
    
    var btn8=document.getElementById("btn8");
    
    var btn9=document.getElementById("btn9");
    
    var btn10=document.getElementById("btn10");

    {
        btn1.style.backgroundColor='rgb(201,93,93)';
        btn2.style.backgroundColor='rgb(201,93,93)';
        btn3.style.backgroundColor='rgb(201,93,93)';
        btn4.style.backgroundColor='rgb(233,233,106)';
        btn5.style.backgroundColor='rgb(233,233,106)';
        btn6.style.backgroundColor='rgb(233,233,106)';
        btn7.style.backgroundColor='rgb(233,233,106)';
        btn8.style.backgroundColor='rgb(164,199,68)';
        btn9.style.backgroundColor='rgb(164,199,68)';
        btn10.style.backgroundColor='rgb(164,199,68)';
    }

}

const textarea=document.querySelector("textarea");


textarea.addEventListener("keyup" , e =>{
    textarea.style.height="35px";
    let scheight=e.target.scrollHeight;
    textarea.style.height=`${scheight}px`;
});

function t1(){
    document.getElementById("rate-input").value="1";
    document.getElementById("show-rate").innerHTML="1";
}
function t2(){
    document.getElementById("rate-input").value="2";
    document.getElementById("show-rate").innerHTML="2";
}
function t3(){
    document.getElementById("rate-input").value="3";
    document.getElementById("show-rate").innerHTML="3";
}
function t4(){
    document.getElementById("rate-input").value="4";
    document.getElementById("show-rate").innerHTML="4";
}
function t5(){
    document.getElementById("rate-input").value="5";
    document.getElementById("show-rate").innerHTML="5";
}
function t6(){
    document.getElementById("rate-input").value="6";
    document.getElementById("show-rate").innerHTML="6";
}
function t7(){
    document.getElementById("rate-input").value="7";
    document.getElementById("show-rate").innerHTML="7";
}
function t8(){
    document.getElementById("rate-input").value="8";
    document.getElementById("show-rate").innerHTML="8";
}
function t9(){
    document.getElementById("rate-input").value="9";
    document.getElementById("show-rate").innerHTML="9";
    
}
function t10(){
    document.getElementById("rate-input").value="10";
    document.getElementById("show-rate").innerHTML="10";
}