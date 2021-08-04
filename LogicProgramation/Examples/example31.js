function calculateGrade(num){
    response = ''
    if (num < 90) {
        response = 'El angulo es agudo'
    }else if (num == 90){
        response = 'El angulo es recto'
    }else if (num > 90 && num < 180 ){
        response = 'El angulo es obtuso'
    }else if (num  == 180){
        response = 'El angulo es llano'
    }else if (num > 180 && num < 360){
        response = 'EL angulo es mayor de 180'
    }else if (num == 360){
        response = 'El angulo es completo'
    }
    return response;
}

console.log(calculateGrade(45))
console.log(calculateGrade(90))
console.log(calculateGrade(110))
console.log(calculateGrade(180))
console.log(calculateGrade(190))
console.log(calculateGrade(360))