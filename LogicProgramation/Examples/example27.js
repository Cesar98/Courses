function generateData(num){
    let years = 0, months = 0, days = 0;

    for (let i = 0; i <= num; i++) {
        if (Number.isInteger(i/365) && i != 0) {
            years++;
        }else if (Number.isInteger(i/30) && i != 0) {
            months++;
        }else{
            days = i;
        }
    }

    months = months - years*12
    days = num - months*30 - years*365

    return {
        'anios': years,
        'meses': months,
        'dias': days
    }
}

let {anios, meses, dias} = generateData(920);
console.log(`Años = ${anios}, meses = ${meses}, dias = ${dias}`)