function factory(number){
    let aux = number;
    for (let i = (number-1); i > 0; i--) {
        aux = aux * i;
    }
    return aux;
}
console.log(factory(5))