function mostUsedChar(textChain) {
    let charMaps = {};
    for (word of textChain) {
        for (char of word) {
            if (char != ' ') {
                if (!charMaps[char]) {
                    charMaps[char] = 1;
                } else {
                    charMaps[char]++;
                }
            }
        }
    }

    let auxVal = 0;
    let auxChar = '';
    for (value in charMaps) {
        if (charMaps[value] > auxVal) {
            auxVal = charMaps[value];
            auxChar = value;
        }
    }
    return { 'valor': auxVal, 'letra': auxChar }
}

console.log('La letra mas repetida es: ' + mostUsedChar('hola como estas?').letra);

String.prototype.intento = function () {
    let charMaps = {};
    for (char of this) {
        if (char != ' ') charMaps[char] = !charMaps[char] ? 1 : charMaps[char] + 1;
    }
    let mostvalue = 0;
    let mostChar = '';
    for (value in charMaps) {
        if (charMaps[value] > mostvalue) {
            mostvalue = charMaps[value];
            mostChar = value;
        }
    }
    return {
        'valor': mostvalue,
        'caracter': mostChar
    }
};

let finalChain = 'La cadena es esta mira nada mas'
let { valor, caracter } = finalChain.intento();

console.log(`El caracter más repetido en '${finalChain}' es: ${caracter} con ${valor} repeticiones`)