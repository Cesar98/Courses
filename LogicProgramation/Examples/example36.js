function countVocals(chainText){
    let vocals = 0, consts = 0;
    for(char of chainText){
        if(char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u'){
            vocals++;
        }else if (char != ' '){
            consts++;
        }
    }

    return {'vocals': vocals, 'consts': consts}
}

let text = 'Hola, como estan?'
let {vocals, consts} = countVocals(text)

console.log(`El numero de vocales en ${text} es = ${vocals}, y las consonantes son = ${consts}`)