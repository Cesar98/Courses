function invertNumber(num){
    let inverted = parseInt((num).toString().split('').reverse().join(''));
    return inverted * Math.sign(num);
}

console.log(invertNumber(-12));

