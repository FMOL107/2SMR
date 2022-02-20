function add(value) {
    var window = getWindow(); 
    if (window == '0') { //Si la pantalla muestra un cero
        window = value; //muestra la nueva entrada
    } else {                      //Sino
        window = window + value; //muestra el antiguo contenido de la pantalla + la nueva entrada
    }
    setWindow(window);
}

function del() { //Borra la pantalla
    setWindow(0);
}

function calc() { //Hace que la calculadora funcione
    var result = eval(getWindow()) //Guarda en la variable "result" el resultado de las operaciones
    setWindow(result); //Muestra por pantalla el resultado guardado en la variable "result"
}

function getWindow(){ //Obtiene el valor del objeto con ID "result"
    return document.getElementById('result').innerHTML;
}
function setWindow(something){ //Cambia el valor del objeto con ID "result"
    document.getElementById('result').innerHTML = something;
}