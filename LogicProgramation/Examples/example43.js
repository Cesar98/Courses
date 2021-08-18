function mid(numArray){
    let sum = 0;
    for (num in numArray) {
        sum = sum + numArray[num]
    }
    return sum/numArray.length;
}

console.log(mid([1,2,3]))