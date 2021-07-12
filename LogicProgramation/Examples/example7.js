function counter(numMin, numMax){
    let count = 0;
    for(let i = numMin; i <= numMax; i++){
        i%2 ? count++ : count;
    }
    return count;
}

console.log(counter(1, 5));

// i%2 da true si el residuo es decimal