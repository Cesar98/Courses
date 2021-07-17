function printNums(num) {
    let chain3 = 'buzz', chain5 = 'lightyear', chain35 = 'BuzzLightyear', finalText = '';
    for (let i = 1; i < num; i++) {
        if (Number.isInteger(i / 3) && Number.isInteger(i / 5)) {
            finalText += chain35 +'\n'
        } else if (Number.isInteger(i / 5)) {
            finalText += chain5 +'\n'
        } else if (Number.isInteger(i / 3)) {
            finalText += chain3 +'\n'
        } else {
            finalText += i +'\n'
        }
    }
    return finalText;
}

console.log(printNums(35))