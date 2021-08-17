function minMax(numbers){
    numbers = numbers.sort((a,b) => a - b);
    return {'Min' : numbers[0], 'Max' : numbers[numbers.length-1]}
}

console.log(minMax([18,1,2,3,4,5,6,9]))
