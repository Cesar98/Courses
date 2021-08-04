function pot(arrayNumbs){
    let auxArray = arrayNumbs
                    .filter(element => typeof element === 'number')
                    .map(element => Math.pow(element, 2));
    return auxArray
}


console.log(pot([1,2,3,4,5,6,'hola']))