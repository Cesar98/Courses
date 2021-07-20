function isCapicua(number){
    let flag = true;
    let stringNum = number.toString();
    let count = stringNum.length;
    for (num in stringNum) {
        flag = stringNum[num] == stringNum[count-1] && flag ? flag : false
        count--;
    }
    return flag;
}

function isCapicua2(number){
    return number
    .toString()
    .split('')
    .reverse()
    .join('') === 
    number.toString();
}

console.log(isCapicua(2002));
console.log(isCapicua(2021));

console.log(isCapicua2(2002));
console.log(isCapicua2(2021));