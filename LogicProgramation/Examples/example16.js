String.prototype.countVocals = function () {
    let regex = /[aeiou]/gi;   
    let total = this.match(regex);
    return total ? total.length : 0;
}

let textChain = 'hdpm'
console.log(`La frase o palabra: '${textChain}' tiene ${textChain.countVocals()} vocales en total`);