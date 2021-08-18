function uniqueWord(str){
    let wordMap = {}
    let arrayWords = []
    let lastArray = []
    for (word of str) {
        wordMap[word] = wordMap[word] ? wordMap[word] + 1 : 1
    }

    for(value in wordMap){
        if(wordMap[value] == 1){
            arrayWords.push(value)
        }
    }

    lastArray.push(arrayWords)
    lastArray.push(arrayWords[0])

    return lastArray
}

console.log(uniqueWord('frase frase HOY'))