function comprove(obj, str){
    return obj.hasOwnProperty(str)
}

console.log(comprove({'name':'Cesar', 'age':23, 'hobbie':'IT'}, 'name'))