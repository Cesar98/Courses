function alumns(alumnArray){
    let aproved = 0, na = 0;
    for(alumn of alumnArray){
        alumn.grade >= 70 ? aproved++ : na++;
    }
    return {'Aprobados':aproved, 'Reprobados':na}
}

console.log(alumns([
    {'alumn':'Cesar', 'grade':85}, 
    {'alumn':'Charles', 'grade':70}, 
    {'alumn':'Lalo', 'grade':50}, ]))