function dupArray(numArray) {
    let newList = [];
    for (num of numArray) {
        if (!newList.includes(num)) {
            newList.push(num)

        }
    }

    return newList;
}

console.log(dupArray([1,1,1,1,1,1]))