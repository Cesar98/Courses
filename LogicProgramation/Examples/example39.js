function isEmail(text){
    return /^\w+@[a-zA-Z]+.com/gi.test(text)
}
console.log(isEmail('cesar98yahoo.com'))
console.log(isEmail('cesar_zuco@.com'))
console.log(isEmail('@gmail.com'))
console.log(isEmail('@.com'))