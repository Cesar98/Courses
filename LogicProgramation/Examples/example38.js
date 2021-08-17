function cuadratics(number){
    let cuadraticsArray = [];
    for (let i = number; i >= 0; i--) {
        cuadraticsArray.push(i*i);
    }
    return cuadraticsArray.reverse();
}

console.log(cuadratics(5))