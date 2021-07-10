console.log('Bienvenido');

//Las promesas, tienen una respouesta (de las cuales pueden ser una respuesta como tal o un error)
var saludar = new Promise((response, reject) => {
    setTimeout(()=>{
        let saludo = "Ya sabes como funcionan las promises";
        saludo ? response(saludo) : reject('No hay saludo');
    }, 2000);
});

//.then se ejecuta despues de que la respuesta esta establecida, y tiene un callback como la misma promesa
saludar.then(resultado =>{
    alert(resultado);
})
.catch(error => {
    alert(error);
});

