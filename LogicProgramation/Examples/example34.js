function basicOperations(num1, num2){
    return {'sum': num1+num2,
            'minus': num1-num2,
            'multi': num1*num2,
            'div': num1/num2}
}

let {sum, minus, multi, div} = basicOperations(5,5);

console.log(`La suma de es = ${sum}`);
console.log(`La resta de es = ${minus}`);
console.log(`La multiplicacion de es = ${multi}`);
console.log(`La division de es = ${div}`);