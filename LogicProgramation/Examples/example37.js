function wordMost(object){
    let returnMap = {};
    if(typeof object == 'string'){
        text = object.toLowerCase().replace(/[!.,?¡¿]/gi, '').split(' ');
        for (word of text) {
            returnMap[word] = !returnMap[word] ? 1 : returnMap[word]+1;
        }
    }else{
        for (obj of object) {
            returnMap[obj] = !returnMap[obj] ? 1 : returnMap[obj]+1;
        }
    }

    let auxVal = 0;
    let auxObj;
    for (val in returnMap) {
        if (returnMap[val] > auxVal) {
            auxVal = returnMap[val];
            auxObj = val;
        }
    }

    return {'Value' : auxVal, 'Object' : auxObj, 'Master' : returnMap}
}

console.log(wordMost([1,1,'hola',3,1,2,'hola']))
console.log(wordMost('Hola amigos, Como estan ustedes? hola, bien y tu?'))