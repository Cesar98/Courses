function goingBack(num) {
    let numChain = `--- Del ${num} al 0 ---\n`;

    while (num >= 0) {
        numChain += ` - ${num} \n`
        num -= 8;
    }
    numChain += '--- FIN ---' 
    return numChain;
}

console.log(goingBack(16));