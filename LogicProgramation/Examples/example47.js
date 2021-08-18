function bestHobbies(objUsers){
    let mapHobbies = {};
    for (hobbArray of objUsers) {
        for(hobbie of hobbArray.hobbies)
        mapHobbies[hobbie] = mapHobbies[hobbie] ? mapHobbies[hobbie]+1 : 1
    }
    return mapHobbies
}

console.log(bestHobbies([
    {'user':'Cesar', 'hobbies':['IT', 'VG']}, 
    {'user':'Charles', 'hobbies':['BB', 'IT']}, 
    {'user':'Lalo', 'hobbies':['IT']},
    {'user':'Alan', 'hobbies':['IT', 'VG', 'BB']}, 
    {'user':'Luis', 'hobbies':['VG']}, ]))