function makeNewArray(elementsArray){
    let newArray = [];
    newArray.push(elementsArray[0], elementsArray[elementsArray.length-1])
    return newArray;
}

console.log(makeNewArray([1,2,3,4,5]))