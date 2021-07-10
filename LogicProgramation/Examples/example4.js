function invert(text){
    let newText = '';
    let size = text.length;
    for (let i = 0; i < text.length; i++) {
        size--;
        newText += text.charAt(size);
    }
    return newText;
}

console.log(invert('hola'));

//------------------------------------------------------------------//
//Sin metodos solo de control
//Con el for of, se recorre cada elemento de un objeto
function invertir(texto){
    let invertido = '';
    for (let letra of texto) {
        invertido = letra + invertido;
    }
    return invertido;
}
console.log(invertir('quepedo'))