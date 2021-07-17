function upWord(textChain){
    let newChain = '';
    for(word of textChain.split(' ')){
        for(char of word){
            newChain += char == word.charAt(0) ? char.toUpperCase() : char;
        }
        newChain += ' ';
    }
    return newChain;
}

console.log(upWord('hola buenos dias'))