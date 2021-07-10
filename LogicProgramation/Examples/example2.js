function palindrom(word){
    let size = word.length;
    let flag;
    for (let i = 0; i < word.length; i++) {
        size--;
        word.charAt(i) == word.charAt(size) ? flag = true : flag = false;
    }
    console.log(flag);
}

let word1 = 'victor';
let word2 = 'otto';

console.log(`Para ${word1}`)
palindrom(word1);

console.log(`Para ${word2}`)
palindrom(word2);