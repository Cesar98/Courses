function mostUsedChar(textChain) {
    let charMaps = {};
    for (word of textChain) {
        for (char of word) {
            if(!charMaps[char]){
                charMaps[char] = 1;
            }else{
                charMaps[char]++;      
            }
        }
    }

    let auxVal = 0;
    let auxChar = '';
    for(value in charMaps){
        if(charMaps[value] > auxVal){
            auxVal = charMaps[value];
            auxChar = value;
        }
    }
    return { 'valor' : auxVal, 'letra' : auxChar }
}

console.log('La letra mas repetida es: ' + mostUsedChar('hola como estas?').letra);