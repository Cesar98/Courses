function countVocals(chainText){
    let vocals = 0, consts = 0;
    chainText = chainText.toLowerCase().replace(/[!.,?¡¿ ]/gi, '');
    for(char of chainText){
        let regex = /[aeiou]/gi;
        let regex1 = /[^aeiou]/gi;
        vocals = char.match(regex) ? vocals+1 : vocals;
        consts = char.match(regex1) ? consts+1 : consts;
    }
    return {'vocals': vocals, 'consts': consts}
}

let text = 'Hola, como estan?'
let {vocals, consts} = countVocals(text)

console.log(`El numero de vocales en ${text} es = ${vocals}, y las consonantes son = ${consts}`)