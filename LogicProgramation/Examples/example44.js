function calculateStrings(stringArray){
    let newArray=[];
    for(string of stringArray){
        if(string.split(' ').length >= 2){
            newArray.push(string)
        }   
    }
    return newArray
}

console.log(calculateStrings(['hola', 'buenos dias', 'como estas', 'bien', 'y tu?', 'bien gracias', 'denada']))