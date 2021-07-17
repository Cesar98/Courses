function compareNumbers(num1, num2){
    if(num1 == num2){
        return 'Ingresa numeros diferentes'
    }else if(num1 > num2){
        return `El numero mayor ${num1}\n El numero menor es ${num2}`
    }else{
        return `El numero mayor ${num2}\n El numero menor es ${num1}`
    }
}

console.log(compareNumbers(1,2))