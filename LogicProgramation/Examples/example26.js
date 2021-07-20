function fibb(num) {
    let num1 = 0, num2 = 1, completeFibb = `La serie completa es: ${num1}, ${num2}, `;
    for (let i = 0; i < num/2; i++) {
        num1 = num1 + num2;
        num2 = num2 + num1;
        completeFibb += num1 + (i == num/2-1 ? ' ' : ', '+num2+', ')
    }
    return {
        'response': num1,
        'text': completeFibb
    }
}
let {response, text} = fibb(10);
console.log(text, response);