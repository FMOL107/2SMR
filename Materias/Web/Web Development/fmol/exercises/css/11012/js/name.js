function showTeacher(modulo) {
    if(modulo == "sec"){
        document.getElementById("check").innerHTML="Fernando Albert";
        document.getElementById("check").style.color="green";
    } else if(modulo == "web"){
        document.getElementById("check").innerHTML="Marichelo Rubio";
        document.getElementById("check").style.color="blue";
    } else if(modulo == "busi"){
        document.getElementById("check").innerHTML="Isabel Dias";
        document.getElementById("check").style.color="yellow";
    } else if(modulo == "serv"){
        document.getElementById("check").innerHTML="Jose Colom";
        document.getElementById("check").style.color="red";
    } else {
        document.getElementById("check").innerHTML="David Alvarez";
        document.getElementById("check").style.color="purple";  
    }
}
