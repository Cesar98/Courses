function splitArray (array, splitNum){
    auxArray = [];
    newArray = [];
    let count = 0;
    for (element of array) {
        auxArray.push(element);
        count++;
        if(count == splitNum){
            newArray.push(auxArray);
            auxArray = [];
            count = 0;
        }
    }

    !(Number.isInteger(array.length/splitNum)) ? newArray.push(auxArray) : newArray;
    
    return newArray;
}

console.log(splitArray([1,2,3,4,5,6,7,8,9,10], 3));
