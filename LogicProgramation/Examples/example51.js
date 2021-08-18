function checkNumbers(numArray){
    let pares = [], impares = [];
    numArray.forEach(num => { num%2==0 ? pares.push(num) : impares.push(num) });
    return {'Pares':pares, 'Impares':impares}
}

console.log(checkNumbers([1,2,3,4,5,6,7,8,9]))