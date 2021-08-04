function dupArray(numArray) {
    numArray = numArray.filter(element => {
        return typeof element === "number"
    });

    return Array.from(new Set(numArray));
}

console.log(dupArray([1,1,1,1,1,'1']))