function upWord(textChain){
    let newChain = '';
    for(word of textChain.split(' ')){
       for (let i = 0; i < word.length; i++) {
           newChain += i == 0 ? word.charAt(i).toUpperCase() : word.charAt(i);          
       }
       newChain += ' '; 
    }
    return newChain;
}

console.log(upWord('hola buenos dias'))