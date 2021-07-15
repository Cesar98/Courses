function multString(text, num){
    let newText = '';
    for (let i = 0; i < num; i++) {
        newText += text;
    }
    return newText;
}

console.log(multString('hola', 4));

String.prototype.repeat = function (num){
    let newText = '';
    for (let i = 0; i < num; i++) {
        newText += this;
    }
    return newText;
}

console.log('quepdo'.repeat(4));