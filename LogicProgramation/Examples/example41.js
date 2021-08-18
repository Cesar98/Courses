function triangle(number) {
    let text = '';
    let ant = 0;
    let sig = 0;
    for (let i = 1; i <= number; i++) {
        for (let j = 1; j < number * 2; j++) {
            if (i == 1) {
                text += j != number ? ' ' : '*';
            } else if (i == number) {
                text += '*'
            } else {
                text += j >= ant && j <= sig ? '*' : ' ';
            }
        }
        ant = ant == 0 ? number - 1 : ant - 1;
        sig = sig == 0 ? number + 1 : sig + 1;
        text += '\n'
    }
    return text
}

console.log(triangle(1))
console.log(triangle(2))
console.log(triangle(3))
console.log(triangle(4))
console.log(triangle(5))
console.log(triangle(6))
console.log(triangle(7))