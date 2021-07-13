function arrayUnion(array1, array2) {
    let response = [];
    for (element of array1) {
        for (element2 of array2) {
            if (element == element2) {
                response.includes(element) ? response : response.push(element) ;
            }
        }
    }
    return response;
}

console.log(arrayUnion([1, 2, 3, 4, 4], [4, 4, 5, 6, 1, 2, 2, 1]));