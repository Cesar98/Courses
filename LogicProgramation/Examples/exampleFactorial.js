function factorial(response, number){
    return number == 1 ? response : factorial(response * number, number - 1);
}

process.stdout.write('Introduce un numero \n')
process.stdin.on('data', function (data) {
    data = Number(data)
    let number = factorial(1, data)
    process.stdout.write(`El factorial de ${data} = ${number} \n`);
    process.stdout.write('Introduce un numero nuevo \n')

});