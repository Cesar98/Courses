function censoredText(text, word){
    let response = '';
    if(text == null || word == null){
        response = 'No hay texto ni palabra'
    } else if(text == null){
        response = 'No hay texto'
    } else if(word == null){
        response = 'No hay palabra'
    }else{
        response = text.replace(new RegExp(word, 'gi'), '[-CENSURADO-]');
    }
    return response;
}

console.log(censoredText('diashola buenosdias dias como dias', 'dias'))