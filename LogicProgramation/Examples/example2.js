function palindrom(word){
    let size = word.length;
    let flag;
    for (let i = 0; i < word.length; i++) {
        size--;
        word.charAt(i) == word.charAt(size) ? flag = true : flag = false;
    }
    return flag;
}
//------------------------------------------------------------------//
//split separa la cadena de texto en lo que se le indica
//reverse revierte el orden del array
//join une el arreglo en un texto
function palindromo(texto){
    let invertido = texto.split('').reverse().join('');
    return texto == invertido;
}

let word1 = 'victor';
let word2 = 'otto';

console.log(`Para ${word1}`)
console.log(palindrom(word1));
console.log(palindromo(word1));

console.log(`Para ${word2}`)
console.log(palindrom(word2));
console.log(palindromo(word2));
