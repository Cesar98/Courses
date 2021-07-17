function isAnagram(word1, word2) {
    if (word1.length == word2.length) {
        let flag;
        let count = word1.length;
        let arrayTrues = [];
        for (char1 of word1) {
            for (char2 of word2) {
                flag = char1 == char2 ? true : false;
                arrayTrues.push(flag);
                if (count == arrayTrues.length) {
                    if (arrayTrues.includes(true)) {
                        arrayTrues = [];
                    } else {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    return false;
}

//________________________Me costo xd_______________________________//
function isAnagram2(word1, word2){
    if(word2.length == word2.length){
        let flag = true;
        for (char of word1) {
            flag = word2.includes(char) && flag ? true : false;
        }
        return flag;
    }
    return false;
}

console.log(isAnagram('cuar que haces?', 'cuar que haces?'));
console.log(isAnagram2('cuar QUE', ' QUEcuar'));
