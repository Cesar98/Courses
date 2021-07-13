function censoredText(text, word){
    let auxText = text.split(' ');
    let newText = '';
    for(single of auxText){
        newText += single == word ? '[Censored] ' : `${single} `;
    }
    console.log(newText)
}

console.log(censoredText('hola buenos dias como dias', 'dias'))