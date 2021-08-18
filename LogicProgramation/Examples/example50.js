function hasCircles(number){
    let aux = number.toString().split('')
    let count = 0;
    for(num of aux){
        count += num=='6'||num=='0'||num=='9' ? 1 : num=='8' ? 2 : 0;
    }
    return count
}

console.log(hasCircles(1680232))