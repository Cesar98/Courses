function convertToBin(number) {
    let bin = '';
    while (number > 0) {
        bin = (Number.isInteger(number / 2) ? '0' : '1') + bin;
        number = Math.floor(number / 2);
    }
    
    let arrayOnes = bin.split(0);
    arrayOnes = arrayOnes.filter(element => element != '')
    let ones = 0;
    for (let i = 0; i < arrayOnes.length; i++) {
        ones = ones < arrayOnes[i].length ? arrayOnes[i].length : ones
    }
    return { 'ones': ones, 'bin': bin };
}

process.stdout.write('Introduce un numero \n')
process.stdin.on('data', function (data) {
    data = Number(data)
    let { ones, bin } = convertToBin(data)
    process.stdout.write(`El numero binario de ${data} = ${bin}, con ${ones} numeros 1 seguidos \n`);
    process.stdout.write('Introduce un numero nuevo \n')

});