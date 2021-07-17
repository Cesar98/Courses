function divisores(num){
    let chainNumbers = '';
    for (let i = 0; i <= num; i++) {
        chainNumbers = Number.isInteger(num/i) ? chainNumbers + i + '\n' : chainNumbers;
    }
    return chainNumbers;
}

console.log(divisores(10))