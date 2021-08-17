function triangle(number){
    let text = '';
    for (let i = 0; i < number; i++) {
        for (let j = 0; j < number; j++) {
            text+='*';            
        }
        text += '\n'
    }
    return text
}

console.log(triangle(3))