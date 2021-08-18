function palindromo(texto){
    let invertido = texto.split('').reverse().join('');
    return texto == invertido;
}

module.exports = palindromo