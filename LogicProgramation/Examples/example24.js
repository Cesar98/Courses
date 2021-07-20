function isPermutation(numbersArray, num){
    let flag = true;
    for (let i = 1; i <= num; i++) {
        flag = i == numbersArray[i-1] && flag ? flag : false;
    }
    return flag;
}

console.log(isPermutation([1,3], 3))