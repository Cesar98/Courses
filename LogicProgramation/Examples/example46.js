function substr(str){
    let newArray = [];
    while (str.length>0) {
        for (let i = 1; i <= str.length; i++) {
            newArray.push(str.split('', i))
        }
        str = str.substring(1)
    }
    return newArray;
}

console.log(substr('hola'))