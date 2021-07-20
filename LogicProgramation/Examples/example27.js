//_____________Tienes la idea, pero te falta estudiar metodos_____________//


function generateData(num){
    return {
        'years': Number.isInteger(num/365) ? num/365 : Math.floor(num/365),
        'months': Number.isInteger((num%365)/30) ? (num%365)/30 : Math.floor((num%365)/30),
        'days': Number.isInteger((num%365)%30) ? (num%365)%30 : Math.floor((num%365)%30)
    }
}

let {years, months, days} = generateData(920);
console.log(`Años = ${years}, meses = ${months}, dias = ${days}`)
