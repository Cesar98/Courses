function changeUps(word){
    let upsCount = 0, minCount = 0;
    for (char of word) {
        if(/[A-Z]/.test(char)){
            upsCount++;
        }else{
            minCount++;
        }
    }
    return upsCount > minCount ? word.toUpperCase() : word.toLowerCase();
}

console.log(changeUps('HoLA'));