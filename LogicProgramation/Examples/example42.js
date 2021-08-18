function randomBetween(min, max){
    return Math.floor(Math.random()*(max-min)+min);
}

console.log(randomBetween(1,5));